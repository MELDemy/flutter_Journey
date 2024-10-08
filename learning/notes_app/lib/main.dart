import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/note_cubit/notes_cubit.dart';
import 'package:notes_app/cubits/simple_bloc_observer.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/home_view.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  final notesBox = await Hive.openBox<NoteModel>(kNotesBox);
  // notesBox.clear();
  Bloc.observer = SimpleBlocObserver();

  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Notes App",
        theme: ThemeData(
          brightness: Brightness.dark,
          scaffoldBackgroundColor: backgroundColor,
          colorScheme: ColorScheme.dark(primary: kPrimaryColor),
          fontFamily: 'Poppins',
          appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent),
        ),
        routes: {
          NotesView.id: (context) => const NotesView(),
        },
        initialRoute: NotesView.id,
      ),
    );
  }
}
