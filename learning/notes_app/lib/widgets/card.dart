import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';

class CustomCard extends StatelessWidget {
  CustomCard({required this.cardColor, super.key});
  final Color cardColor;
  NoteModel noteModel = NoteModel(
      title: "Flutter tips",
      description: "this is the description of flutter tips",
      dateTime: DateTime(2024));
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: cardColor,
        ),
        padding: EdgeInsets.only(top: 25, left: 25, right: 25, bottom: 25),
        height: 200,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomCardText(
                  text: noteModel.title,
                  fontsize: 26,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 250,
                  child: CustomCardText(
                    text: noteModel.description,
                    fontcolor: Colors.black.withOpacity(.6),
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  padding: EdgeInsets.only(top: 30),
                  alignment: Alignment.centerRight,
                  onPressed: () {},
                  icon: Icon(
                    Icons.delete,
                    size: 30,
                    color: Colors.black,
                  ),
                ),
                CustomCardText(
                  text:
                      "${noteModel.dateTime.day}/${noteModel.dateTime.month}/${noteModel.dateTime.year}",
                  fontcolor: Colors.black.withOpacity(.6),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class CustomCardText extends StatefulWidget {
  CustomCardText({
    super.key,
    required this.text,
    this.fontsize = 18,
    this.fontcolor = Colors.black,
  });
  final Color fontcolor;
  final String text;
  double fontsize;

  @override
  State<CustomCardText> createState() => _CustomCardTextState();
}

class _CustomCardTextState extends State<CustomCardText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      style: TextStyle(fontSize: widget.fontsize, color: widget.fontcolor),
    );
  }
}
