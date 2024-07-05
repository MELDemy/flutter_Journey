
class QuizQuestion{
  const QuizQuestion({required this.question, required this.answers});

  final String question;
  final List<String> answers;

  List<String> shuffledAnswers(){
    final shuffledAnswers =List.of(answers);
    shuffledAnswers.shuffle();
    return shuffledAnswers;
  }
}

