import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  // Các TextEditingController để người dùng nhập thông tin
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  final FirebaseAuth auth = FirebaseAuth.instance;

  // Trạng thái để quản lý việc xử lý đăng nhập
  var isLoading = false.obs;
  var errorMessage = ''.obs;
  var successMessage = ''.obs;

  // Hàm đăng nhập người dùng
  void onLogin() async {
    // Kiểm tra xem các trường thông tin có hợp lệ không
    if (email.text.isEmpty || password.text.isEmpty) {
      errorMessage.value = 'Vui lòng điền đầy đủ thông tin!';
      return;
    }

    // Reset thông báo lỗi cũ khi bắt đầu đăng nhập mới
    errorMessage.value = '';
    successMessage.value = '';

    // Thực hiện đăng nhập
    await loginAccount(email.text, password.text);
  }

  // Hàm đăng nhập
  Future<void> loginAccount(String email, String password) async {
    try {
      isLoading.value = true; // Bật trạng thái loading

      // Đăng nhập người dùng với email và mật khẩu
      await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);

      // Cập nhật thông báo thành công
      successMessage.value = "Đăng nhập thành công!";
      errorMessage.value = ''; // Xóa thông báo lỗi nếu đăng nhập thành công

      isLoading.value = false;
    } on FirebaseAuthException catch (ex) {
      isLoading.value = false; // Tắt trạng thái loading
      if (ex.code == "user-not-found") {
        errorMessage.value = "Email không tồn tại, vui lòng kiểm tra lại!";
      } else if (ex.code == "wrong-password") {
        errorMessage.value = "Mật khẩu sai, vui lòng thử lại!";
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
