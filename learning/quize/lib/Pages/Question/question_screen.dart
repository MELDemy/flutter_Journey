import 'dart:developer';

import 'package:flutter/material.dart';
import '../../Data/questions.dart';
import '../../models/quiz_question.dart';
import 'answer_button.dart';

class Questions_Screen extends StatefulWidget {
   const Questions_Screen(this.OnSelectedAnswers,{super.key});

   final void Function(String) OnSelectedAnswers;
  @override
  State<Questions_Screen> createState() => _Questions_ScreenState();
}

class _Questions_ScreenState extends State<Questions_Screen> {
   int QIndex =0;

   void nextQuestion(String answer){
     log("The answer is :"+answer);
     widget.OnSelectedAnswers(answer);
     setState(() {
       QIndex++;
     });
   }

  @override
  Widget build(BuildContext context) {
    QuizQuestion currentQuestion =questions[QIndex];
    return  Container(
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(currentQuestion.question,style: TextStyle(fontSize: 20,color: Colors.white),textAlign: TextAlign.center,),
            SizedBox(height: 40,),
            ... currentQuestion.shuffledAnswers().map((answer) {
              return Container(
                margin: EdgeInsets.all(5),
                padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                  child: AnswerButton(
                      text: answer,onPressed: (){nextQuestion(answer);}
                  )
              );
            }),
          ],
        ),
    );
  }
}
