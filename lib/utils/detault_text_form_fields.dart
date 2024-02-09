import 'package:flutter/material.dart';

class DefaultTextFields extends StatelessWidget {
  const DefaultTextFields(
      {super.key,
      required this.labelText,
      this.borderRadius,
      this.filled = true,
      this.icon,
      this.obscureText = false,
      this.lines});

  final String labelText;
  final OutlineInputBorder? borderRadius;
  final bool? filled;
  final bool obscureText;
  final Icon? icon;
  final int? lines;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      maxLines: lines,
      decoration: InputDecoration(
        fillColor: Colors.white10,
        filled: filled,
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black54,
          ),
        ),
        labelText: labelText,
        suffixIcon: icon,
      ),
    );
  }
}
