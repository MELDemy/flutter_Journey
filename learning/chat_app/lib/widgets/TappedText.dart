import 'package:flutter/material.dart';

class TappedText extends StatelessWidget {
  const TappedText({this.onTap, super.key, required this.text});
  final VoidCallback? onTap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        text,
        style: const TextStyle(color: Color(0xFFC7EDE6)),
      ),
    );
  }
}
