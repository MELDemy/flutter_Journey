import 'package:flutter/material.dart';
import 'package:quize/Pages/Question/question_screen.dart';
import 'package:quize/Pages/ResultScreen.dart';
import '../Data/questions.dart';
import 'home.dart';

class Quiz extends StatefulWidget {
  Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;
   List<String> selectedAnswer=[];

  void chooseAnswer(String answer){
    selectedAnswer.add(answer);

    if(selectedAnswer.length==questions.length){
      setState(() {
        activeScreen=ResultScreen(homeScreen,switchScreen,selectedAnswer);
        selectedAnswer=[];
      });
    }
  }

  @override
  void initState() {
    super.initState();
    activeScreen = Home(switchScreen);
  }

  void homeScreen(){
    setState(() {
      activeScreen = Home(switchScreen);
    });
  }

  void switchScreen(){
    setState(() {
      activeScreen = Questions_Screen(chooseAnswer);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.deepPurpleAccent, Colors.purpleAccent])
            ),
            child: activeScreen,
          ),
        )
    );
  }
}
