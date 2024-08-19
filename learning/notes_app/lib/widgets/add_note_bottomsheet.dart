import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_text_button.dart';
import 'package:notes_app/widgets/custom_textfield.dart';

class AddNoteBottomSheet extends StatefulWidget {
  AddNoteBottomSheet({super.key});

  @override
  State<AddNoteBottomSheet> createState() => _AddNoteBottomSheetState();
}

class _AddNoteBottomSheetState extends State<AddNoteBottomSheet> {
  late String title, description;

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
                      label: "Title",
                      maxLines: 1,
                      onChanged: (value) {
                        this.title = value;
                      },
                    ),
                    SizedBox(height: 15),
                    CustomTextFormField(
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
                  text: "Add",
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
