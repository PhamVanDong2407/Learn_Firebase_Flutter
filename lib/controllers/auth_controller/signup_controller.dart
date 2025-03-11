import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  // Các TextEditingController để người dùng nhập thông tin
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController number = TextEditingController();
  TextEditingController password = TextEditingController();

  final FirebaseAuth auth = FirebaseAuth.instance;

  // Trạng thái để quản lý việc xử lý đăng ký
  var isLoading = false.obs;
  var errorMessage = ''.obs;
  var successMessage = ''.obs;

  // Hàm đăng ký người dùng
  void onSignup() async {
    // Kiểm tra xem các trường thông tin có hợp lệ không
    if (name.text.isEmpty || email.text.isEmpty || password.text.isEmpty) {
      errorMessage.value = 'Vui lòng điền đầy đủ thông tin!';
      return;
    }

    // Reset thông báo lỗi cũ khi bắt đầu đăng ký mới
    errorMessage.value = '';
    successMessage.value = '';

    // Thực hiện đăng ký
    await createAccount(email.text, password.text);
  }

  // Hàm tạo tài khoản
  Future<void> createAccount(String email, String password) async {
    try {
      isLoading.value = true; // Bật trạng thái loading

      // Tạo tài khoản Firebase
      await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);

      // Cập nhật thông báo thành công
      successMessage.value = "Tạo tài khoản thành công!";
      errorMessage.value = ''; // Xóa thông báo lỗi nếu tạo tài khoản thành công

      isLoading.value = false;
    } on FirebaseAuthException catch (ex) {
      isLoading.value = false; // Tắt trạng thái loading
      if (ex.code == "weak-password") {
        errorMessage.value = "Mật khẩu yếu, vui lòng nhập mật khẩu mạnh hơn!";
      } else if (ex.code == "email-already-in-use") {
        errorMessage.value = "Email đã tồn tại, vui lòng đăng nhập!";
      } else {
        errorMessage.value = "Lỗi: ${ex.message}";
      }
    } catch (ex) {
      isLoading.value = false; // Tắt trạng thái loading
      errorMessage.value = "Đã xảy ra lỗi, vui lòng thử lại!";
      print(ex);
    }
  }
}
