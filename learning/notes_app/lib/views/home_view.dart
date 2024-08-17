import 'package:flutter/material.dart';
import 'package:notes_app/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  static String id = "HomeScreen";
  NotesView({super.key});

  List<Color> colors = [
    Color(0xFFFFCD7A),
    Color(0xFFE7E896),
    Color(0xFF76D6EE),
    Color(0xFFE2A7EA),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Notes",
          style: TextStyle(fontSize: 28),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: IconButton(
              color: Colors.white,
              onPressed: () {},
              icon: Icon(
                Icons.search,
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateColor.resolveWith(
                    (states) => Color(0x803B3B3B)),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: NotesViewBody(colors: colors),
    );
  }
}
