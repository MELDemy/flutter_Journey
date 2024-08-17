import 'package:flutter/material.dart';

class CustomCardText extends StatelessWidget {
  CustomCardText({
    super.key,
    required this.text,
    this.fontsize = 20,
    this.fontcolor = Colors.black,
  });
  final Color fontcolor;
  final String text;
  double fontsize;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: fontsize, color: fontcolor),
    );
  }
}
