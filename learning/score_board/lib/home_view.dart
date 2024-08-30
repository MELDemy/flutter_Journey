import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:score_board/cubit/scores_cubit.dart';
import 'package:score_board/cubit/scores_states.dart';
import 'package:score_board/widgets/team_score_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: BlocProvider(
        create: (context) => ScoresCubit(),
        child: BlocConsumer<ScoresCubit, ScoresState>(
          listener: (context, state) {},
          builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(BlocProvider.of<ScoresCubit>(context).leading),
                IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TeamScoreWidget(teamName: "Team 1"),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: VerticalDivider(
                          color: Colors.blue,
                          thickness: 1,
                        ),
                      ),
                      TeamScoreWidget(teamName: "Team 2"),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    BlocProvider.of<ScoresCubit>(context).ResetAllScores();
                  },
                  icon: Icon(Icons.restart_alt),
                  label: Text('RESET'),
                )
              ],
            );
          },
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
