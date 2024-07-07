import 'package:flutter/material.dart';

class MyComponent extends StatefulWidget {
  MyComponent({super.key, required this.text, required this.color, required this.onTap});

  String text;
  int color;
  VoidCallback onTap;

  @override
  State<MyComponent> createState() => _MyComponentState();
}

class _MyComponentState extends State<MyComponent> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        padding: const EdgeInsets.only(left: 20),
        width: double.infinity,
        height: 60,
        color: Color(widget.color),
        alignment: Alignment.centerLeft,
        child: Text(
          widget.text,
          style: const TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
    );
  }
}
