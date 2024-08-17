import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        "Add",
        style: TextStyle(fontSize: 18),
      ),
      style: ButtonStyle(
        backgroundColor:
            MaterialStateColor.resolveWith((states) => kPrimaryColor),
        foregroundColor:
            MaterialStateColor.resolveWith((states) => Colors.black),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
        ),
      ),
    );
  }
}