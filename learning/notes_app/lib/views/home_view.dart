import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/widgets/add_note_bottomsheet.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  static String id = "HomeScreen";
  NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            backgroundColor: backgroundColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            context: context,
            builder: (context) {
              return AddNoteBottomSheet();
            },
          );
        },
        child: Icon(Icons.add),
      ),
      appBar: CustomAppBar(
        title: "Notes",
        icon: Icons.search,
      ),
      body: NotesViewBody(),
    );
  }
}
