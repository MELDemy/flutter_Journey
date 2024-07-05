import 'package:flutter/material.dart';

class Home extends StatelessWidget {
   Home(this.switchScreen,{super.key});

   void Function() switchScreen;
  @override
  Widget build(BuildContext context) {
    return Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  "assets/images/quiz-logo.png",
                  width: 350,
                  color: Colors.white.withOpacity(.85),
                ),
                SizedBox(height: 50,),
                OutlinedButton.icon(
                  onPressed:switchScreen,
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.white,
                  ),
                  label: Text("Start Quiz",),
                  icon: Icon(Icons.arrow_circle_right_rounded),
                ),
              ],
            )
    );
  }
}
