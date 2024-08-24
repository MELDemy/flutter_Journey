import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  Color noteColor = const Color(0xFFFFCD7A);
  addNote(NoteModel noteModel) async {
    noteModel.color = noteColor.value;
    emit(AddNoteLoading());
    try {
      Box notesBox = Hive.box<NoteModel>(kNotesBox);
      await notesBox.add(noteModel);
      emit(AddNoteSuccess(noteModel));
    } catch (e) {
      emit(AddNoteFailure(e.toString()));
    }
  }
}
