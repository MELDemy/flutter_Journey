import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:score_board/cubit/scores_states.dart';

class ScoresCubit extends Cubit<ScoresState> {
  ScoresCubit() : super(AscoreState());
  int aScore = 0;
  int bScore = 0;

  String leading = "Tie";
  void aIncrementScore(int increment) {
    aScore += increment;
    updateWinner();
    emit(AscoreState());
  }

  void bIncrementScore(int increment) {
    bScore += increment;
    updateWinner();
    emit(BscoreState());
  }

  void aResetScores() {
    aScore = 0;
    updateWinner();
    emit(AscoreState());
  }

  void bResetScores() {
    bScore = 0;
    updateWinner();
    emit(BscoreState());
  }

  void ResetAllScores() {
    aScore = 0;
    bScore = 0;
    updateWinner();
    emit(AscoreState());
  }

  void updateWinner() {
    if (aScore > bScore)
      leading = "Leading is Team 1";
    else if (aScore < bScore)
      leading = "Leading is Team 2";
    else {
      leading = "Tie";
    }
  }
}
