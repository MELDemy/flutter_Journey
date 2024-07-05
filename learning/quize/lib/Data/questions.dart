

import 'package:quize/models/quiz_question.dart';

const List <QuizQuestion> questions =[
  QuizQuestion(
      question: '1st question',
      answers: ['1st answer','2nd answer','3rd answer','4th answer']
  ),
  QuizQuestion(
    question: 'How should you update dati inside of StatefulWidgets?' ,
    answers: [
      'By catting setState()',
      'By catting updateData()' ,
      'By calling updateUI()' ,
      'By catting updateState( )',
    ]
  )
];