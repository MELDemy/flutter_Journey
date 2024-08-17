import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_text_button.dart';
import 'package:notes_app/widgets/custom_textfield.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                SizedBox(height: 30),
                CustomTextFormField(label: "Title"),
                SizedBox(height: 15),
                CustomTextFormField(
                  label: "Content",
                  minLines: 5,
                ),
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.only(bottom: 25),
              width: double.infinity,
              child: CustomTextButton())
        ],
      ),
    );
  }
}
