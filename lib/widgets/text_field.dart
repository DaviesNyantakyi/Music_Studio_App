import 'package:flutter/material.dart';

import '../utilities/constant.dart';

class CustomTextField extends StatefulWidget {
  final Color? fillColor;
  final Widget? prefixIcon;
  final Function(String)? onChanged;
  final String? hintText;
  final int? maxLength;
  final Widget? counter;
  const CustomTextField({
    super.key,
    this.fillColor,
    this.prefixIcon,
    required this.onChanged,
    this.counter,
    this.hintText,
    this.maxLength,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLength: widget.maxLength,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
      ),
      decoration: InputDecoration(
        hintText: widget.hintText,
        prefixIcon: widget.prefixIcon,
        fillColor: widget.fillColor ?? kGrey,
        filled: true,
        counter: widget.counter,
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
    );
  }
}
