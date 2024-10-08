import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_note_view.dart';
import 'package:notes_app/widgets/custom_card_text.dart';
import 'package:notes_app/widgets/note_tile.dart';

class CustomNoteCard extends StatelessWidget {
  const CustomNoteCard({required this.noteModel, super.key});

  final NoteModel noteModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return EditNoteView(
                noteModel: noteModel,
              );
            },
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: Color(noteModel.color ?? 42941980),
            borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            NoteTile(noteModel: noteModel),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CustomCardText(
                text: DateFormat('yyyy-MM-dd').format(noteModel.dateTime),
                fontcolor: Colors.black.withOpacity(.6),
                fontsize: 16,
              ),
            )
          ],
        ),
      ),
    );
  }
}
