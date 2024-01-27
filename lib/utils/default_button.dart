import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton(
      {super.key,
      required this.text,
      this.boxDecoration,
      required this.textStyle,
      required this.onTap});
  final String text;
  final BoxDecoration? boxDecoration;
  final TextStyle? textStyle;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 70,
        width: double.infinity,
        decoration: boxDecoration,
        child: Center(
            child: Text(
          text,
          style: textStyle,
        )),
      ),
    );
  }
}
