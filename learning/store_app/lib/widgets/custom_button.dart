import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({this.ontap, required this.text, super.key});
  VoidCallback? ontap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(70),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ),
    );
  }
}