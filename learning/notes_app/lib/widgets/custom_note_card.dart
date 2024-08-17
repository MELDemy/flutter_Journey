import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_card_text.dart';
import 'package:notes_app/widgets/note_tile.dart';

class CustomNoteCard extends StatelessWidget {
  CustomNoteCard({required this.cardColor, super.key});
  final Color cardColor;
  NoteModel noteModel = NoteModel(
    title: "Flutter tips",
    description: "this is the description of flutter tips",
    dateTime: DateTime(2024),
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: cardColor, borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          NoteTile(noteModel: noteModel),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: CustomCardText(
              text:
                  "${noteModel.dateTime.day}/${noteModel.dateTime.month}/${noteModel.dateTime.year}",
              fontcolor: Colors.black.withOpacity(.6),
              fontsize: 16,
            ),
          )
        ],
      ),
    );
  }
}