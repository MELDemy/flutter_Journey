import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({this.onTap, required this.text, super.key});
  final VoidCallback? onTap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(fontSize: 20, color: Color(0xff2B475E)),
          ),
        ),
      ),
    );
  }
}
