import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.lable,
  });

  final String lable;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        border: UnderlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10)),
        label: Text(
          lable,
          style: const TextStyle(
            color: Color(0xFFA9ABB7),
            fontSize: 17,
          ),
        ),
      ),
    );
  }
}
