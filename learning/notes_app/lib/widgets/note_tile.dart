import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/note_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_card_text.dart';

class NoteTile extends StatelessWidget {
  const NoteTile({
    super.key,
    required this.noteModel,
  });

  final NoteModel noteModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      titleAlignment: ListTileTitleAlignment.top,
      contentPadding: EdgeInsets.only(left: 10),
      title: CustomCardText(text: noteModel.title, fontsize: 26),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 25.0, bottom: 10),
        child: CustomCardText(
          text: noteModel.description,
          fontcolor: Colors.black.withOpacity(.6),
        ),
      ),
      trailing: Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: IconButton(
          onPressed: () {
            BlocProvider.of<NotesCubit>(context).deleteNote(noteModel);
          },
          icon: Icon(Icons.delete, color: Colors.black, size: 35),
        ),
      ),
    );
  }
}
