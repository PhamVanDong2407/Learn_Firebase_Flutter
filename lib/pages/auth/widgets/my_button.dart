import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final IconData icon;
  final String Btnname;
  final VoidCallback ontap;

  const MyButton({
    super.key,
    required this.icon,
    required this.Btnname,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: ontap, // Gọi hàm optap khi nút được nhấn
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue, // Màu nền của nút
        shape: const StadiumBorder(), // Bo góc nút
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20), // Đệm cho nút
      ),
      child: SizedBox(
        width: double.infinity, // Đảm bảo nút có chiều rộng tối đa
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center, // Canh giữa nội dung của nút
          children: [
            Icon(icon, color: Colors.white), // Hiển thị icon
            const SizedBox(width: 8), // Khoảng cách giữa icon và văn bản
            Text(
              Btnname,
              style: const TextStyle(fontSize: 18, color: Colors.white), // Định dạng văn bản
            ),
          ],
        ),
      ),
    );
  }
}
