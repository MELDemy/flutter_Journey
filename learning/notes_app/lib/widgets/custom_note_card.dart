import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';

class CustomNoteCard extends StatelessWidget {
  CustomNoteCard({required this.cardColor, super.key});
  final Color cardColor;
  NoteModel noteModel = NoteModel(
    title: "Flutter tips",
    description: "this is the description of flutter tips",
    dateTime: DateTime(2024),
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: cardColor, borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            titleAlignment: ListTileTitleAlignment.top,
            contentPadding: EdgeInsets.only(left: 10),
            title: CustomCardText(
              text: noteModel.title,
              fontsize: 26,
            ),
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
                onPressed: () {},
                icon: Icon(
                  Icons.delete,
                  color: Colors.black,
                  size: 35,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: CustomCardText(
              text:
                  "${noteModel.dateTime.day}/${noteModel.dateTime.month}/${noteModel.dateTime.year}",
              fontcolor: Colors.black.withOpacity(.6),
              fontsize: 16,
            ),
          )
        ],
      ),
    );
  }
}

class CustomCardText extends StatelessWidget {
  CustomCardText({
    super.key,
    required this.text,
    this.fontsize = 20,
    this.fontcolor = Colors.black,
  });
  final Color fontcolor;
  final String text;
  double fontsize;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: fontsize, color: fontcolor),
    );
  }
}
