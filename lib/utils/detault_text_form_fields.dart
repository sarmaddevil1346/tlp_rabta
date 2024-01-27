import 'package:flutter/material.dart';

class DefaultTextFields extends StatelessWidget {
  DefaultTextFields(
      {super.key,
      required this.labelText,
      this.borderRadius,
      this.filled = false,
      this.icon,
      this.obscureText = false});
  String labelText;
  OutlineInputBorder? borderRadius;
  final bool? filled;
  final bool obscureText;
  Icon? icon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      decoration: InputDecoration(
        filled: filled,
        border: borderRadius,
        labelText: labelText,
        suffixIcon: icon,
      ),
    );
  }
}
