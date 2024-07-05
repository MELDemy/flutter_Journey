import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  AnswerButton({super.key,required this.text,required this.onPressed});
    Function() onPressed;
    String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // gradient: LinearGradient(colors: [Colors.deepPurpleAccent, Colors.purpleAccent]),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(text),
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 25,vertical: 13),
            backgroundColor: Colors.deepPurpleAccent,
            foregroundColor: Colors.white,
            shadowColor: Colors.transparent,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(1000))
        ),
      ),
    );
  }
}
