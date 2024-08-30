import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:score_board/cubit/scores_cubit.dart';
import 'package:score_board/widgets/score_button.dart';

class TeamScoreWidget extends StatelessWidget {
  const TeamScoreWidget({super.key, required this.teamName});
  final String teamName;

  @override
  Widget build(BuildContext context) {
    ScoresCubit provider = BlocProvider.of<ScoresCubit>(context);
    int score = teamName == "Team 1" ? provider.aScore : provider.bScore;
    return Column(
      children: [
        Text(
          '${teamName}',
          style: TextStyle(fontSize: 30),
        ),
        Text(
          '${score}',
          style: TextStyle(fontSize: 30),
        ),
        ScoreButton(teamName: teamName, increment: 1),
        ScoreButton(teamName: teamName, increment: 2),
        ScoreButton(teamName: teamName, increment: 3),
        SizedBox(
          height: 20,
        ),
        ElevatedButton.icon(
          onPressed: () {
            teamName == "Team 1"
                ? provider.aResetScores()
                : provider.bResetScores();
          },
          icon: Icon(Icons.restart_alt),
          label: Text('RESET'),
        )
      ],
    );
  }
}
