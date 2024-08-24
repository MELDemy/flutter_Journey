import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  getNotes() {
    // emit(NotesLoading());
    try {
      final Box<NoteModel> notesBox = Hive.box<NoteModel>(kNotesBox);
      List<NoteModel> notes = notesBox.values.toList();
      emit(NotesSuccess(notes));
    } catch (e) {
      emit(NotesFailure(errMsg: e.toString()));
    }
  }

  deleteNote(NoteModel noteModel) async {
    // emit(NotesLoading());
    try {
      await noteModel.delete();
      getNotes();
    } catch (e) {
      emit(NotesFailure(errMsg: e.toString()));
    }
  }
}
