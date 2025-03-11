import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String label;
  final IconData icons;
  final TextEditingController Onchange;

  const MyTextField({super.key, required this.label, required this.icons, required this.Onchange});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            controller: Onchange,
            decoration: InputDecoration(
              prefixIcon: Icon(
                icons,
                color: Colors.black,
              ),
              fillColor: CupertinoColors.lightBackgroundGray,
              filled: true,
              hintText: label,
              hintStyle: const TextStyle(
                color: Colors.black,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
