import 'package:flutter/material.dart';
import 'package:notes_app/screens/home_screen.dart';

void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Notes App",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        scaffoldBackgroundColor: Color(0xFF303030),
      ),
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
      },
      initialRoute: HomeScreen.id,
    );
  }
}
