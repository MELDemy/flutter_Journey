import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen(this.homeScreen,this.switchScreen,this.answers,{super.key});

  List<String> answers;
  void Function() switchScreen;
  void Function() homeScreen;


  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("You have completed the quiz",style: TextStyle(fontSize: 20,color: Colors.white),),
            Text("Your Answers :",style: TextStyle(fontSize: 20,color: Colors.white),),
            ...answers.map((e)=> Text(e)),
            SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton.icon(
                  onPressed:switchScreen,
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.white,
                  ),
                  label: Text("Restart Quiz",),
                  icon: Icon(Icons.arrow_circle_right_rounded),
                ),
                SizedBox(width: 20,),
                OutlinedButton.icon(
                  onPressed:homeScreen,
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.white,
                  ),
                  label: Text("Home",),
                  icon: Icon(Icons.arrow_circle_right_rounded),
                ),
              ],
            ),
          ],
        )
    );
  }
}
