import 'package:flutter/material.dart';
import 'package:notes_app/widgets/card.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key, required this.colors});

  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: colors.length,
      itemBuilder: (context, index) {
        return CustomCard(
          cardColor: colors[index],
        );
      },
    );
  }
}
