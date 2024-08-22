import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/note_cubit/notes_cubit.dart';
import 'package:notes_app/widgets/custom_note_card.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  final List<Color> colors = [
    const Color(0xFFFFCD7A),
    const Color(0xFFE7E896),
    const Color(0xFF76D6EE),
    const Color(0xFFE2A7EA),
  ];
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).getNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        if (state is NotesFailure) {
          return Center(
            child: Text("There was an error Please try again"),
          );
        } else if (state is NotesSuccess) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: ListView.builder(
              itemCount: state.notes.length,
              itemBuilder: (context, index) {
                return CustomNoteCard(
                  noteModel: state.notes[index],
                );
              },
            ),
          );
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
