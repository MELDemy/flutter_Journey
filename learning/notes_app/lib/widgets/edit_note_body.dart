import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_text_button.dart';
import 'package:notes_app/widgets/custom_textfield.dart';

class EditNoteBody extends StatefulWidget {
  const EditNoteBody({required this.noteModel, super.key});

  final NoteModel noteModel;

  @override
  State<EditNoteBody> createState() => _EditNoteBodyState();
}

class _EditNoteBodyState extends State<EditNoteBody> {
  late String title = widget.noteModel.title;
  late String description = widget.noteModel.description;

  final GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 30),
                    CustomTextFormField(
                      initialValue: widget.noteModel.title,
                      label: "Title",
                      maxLines: 1,
                      onChanged: (value) {
                        this.title = value;
                      },
                    ),
                    SizedBox(height: 15),
                    CustomTextFormField(
                        initialValue: widget.noteModel.description,
                        label: "Content",
                        minLines: 5,
                        onChanged: (value) {
                          this.description = value;
                        }),
                  ],
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.only(bottom: 25, top: 10),
                width: double.infinity,
                child: CustomTextButton(
                  text: "Edit",
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      print(title + "\n" + description);
                      Navigator.pop(context);
                    }
                  },
                ))
          ],
        ),
      ),
    );
  }
}
