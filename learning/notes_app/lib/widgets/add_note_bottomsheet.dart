import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/cubits/note_cubit/notes_cubit.dart';
import 'package:notes_app/widgets/add_note_sheet.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteFailure) {
            print("Failure -- ${state.errMsg}");
          }

          if (state is AddNoteSuccess) {
            BlocProvider.of<NotesCubit>(context).getNotes();
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNoteLoading,
            child: AddNoteSheet(),
          );
        },
      ),
    );
  }
}
