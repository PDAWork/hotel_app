import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    required this.lable,
    this.controller,
    this.keyboardType,
    this.inputFormatters,
    this.onChanged,
    this.onTap,
    this.regExp,
    this.errorText,
  });

  final String lable;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final Function(String)? onChanged;
  final Function()? onTap;
  final RegExp? regExp;
  final String? errorText;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _isError = false;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      inputFormatters: widget.inputFormatters,
      decoration: InputDecoration(
        errorText: _isError ? widget.errorText : null,
        filled: true,
        border: UnderlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10)),
        label: Text(
          widget.lable,
          style: const TextStyle(
            color: Color(0xFFA9ABB7),
            fontSize: 17,
          ),
        ),
      ),
      onChanged: (value) {
        setState(() {
          if (widget.regExp != null) {
            _isError = !widget.regExp!.hasMatch(value);
          }
        });
      },
      onTap: () {
        setState(() {
          _isError = false;
        });
      },
      style: TextStyle(
        color: _isError ? const Color(0xFFEB5757) : null,
      ),
    );
  }
}
