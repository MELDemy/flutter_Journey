import 'package:flutter/material.dart';

class TappedText extends StatelessWidget {
  TappedText({this.onTap, super.key});
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        "Sign up",
        style: TextStyle(color: Color(0xFFC7EDE6)),
      ),
    );
  }
}
