import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_textfield.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        SizedBox(height: 50),
        CustomTextFormField(label: Text("Title")),
        CustomTextFormField(
          label: Text("Content"),
          minLines: 5,
        ),
      ],
    );
  }
}
