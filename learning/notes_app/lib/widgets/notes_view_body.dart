import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_note_card.dart';

class NotesViewBody extends StatelessWidget {
  NotesViewBody({super.key});

  final List<Color> colors = [
    const Color(0xFFFFCD7A),
    const Color(0xFFE7E896),
    const Color(0xFF76D6EE),
    const Color(0xFFE2A7EA),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return CustomNoteCard(
            cardColor: colors[index],
          );
        },
      ),
    );
  }
}
