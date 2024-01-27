import 'package:flutter/material.dart';

class DefaultTextFields extends StatefulWidget {
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
  State<DefaultTextFields> createState() => _DefaultTextFieldsState();
}

class _DefaultTextFieldsState extends State<DefaultTextFields> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.obscureText,
      decoration: InputDecoration(
        filled: widget.filled,
        border: widget.borderRadius,
        labelText: widget.labelText,
        suffixIcon: widget.icon,
      ),
    );
  }
}
