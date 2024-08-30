import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:score_board/cubit/scores_cubit.dart';

class ScoreButton extends StatelessWidget {
  const ScoreButton(
      {required this.teamName, required this.increment, super.key});

  final int increment;
  final String teamName;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        teamName == "Team 1"
            ? BlocProvider.of<ScoresCubit>(context).aIncrementScore(increment)
            : BlocProvider.of<ScoresCubit>(context).bIncrementScore(increment);
      },
      child: Text(
          increment == 1 ? 'Add $increment point' : 'Add $increment points'),
    );
  }
}
