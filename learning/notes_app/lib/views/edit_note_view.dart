import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/edit_note_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({required this.noteModel, super.key});

  final NoteModel noteModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Edit Note",
        icon: Icons.check,
      ),
      body: EditNoteBody(
        noteModel: noteModel,
      ),
    );
  }
}
