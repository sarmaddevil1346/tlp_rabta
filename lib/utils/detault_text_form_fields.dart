import 'package:flutter/material.dart';

class DefaultTextFields extends StatelessWidget {
  DefaultTextFields(
      {super.key,
      required this.labelText,
      this.borderRadius,
      this.filled = false,
      this.icon});
  String labelText;
  OutlineInputBorder? borderRadius;
  final bool? filled;
  Icon? icon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        filled: filled,
        border: borderRadius,
        labelText: labelText,
        suffixIcon: icon,
      ),
    );
  }
}
