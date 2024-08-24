import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/note_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_button.dart';
import 'package:notes_app/widgets/custom_textfield.dart';

class EditNoteView extends StatefulWidget {
  const EditNoteView({required this.noteModel, super.key});

  final NoteModel noteModel;

  @override
  State<EditNoteView> createState() => _EditNoteViewState();
}

class _EditNoteViewState extends State<EditNoteView> {
  late String? title = widget.noteModel.title;
  late String? description = widget.noteModel.description;

  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Edit Note",
        icon: Icons.check,
        onIconPressed: () {
          editNote(context);
        },
      ),
      body: Form(
        key: formKey,
        autovalidateMode: autoValidateMode,
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
                        onSaved: (value) {
                          this.title = value;
                        },
                      ),
                      SizedBox(height: 15),
                      CustomTextFormField(
                          initialValue: widget.noteModel.description,
                          label: "Content",
                          minLines: 5,
                          onSaved: (value) {
                            this.description = value;
                          }),
                    ],
                  ),
                ),
              ),
              CustomTextButton(
                text: "Edit",
                onPressed: () {
                  editNote(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  void editNote(BuildContext context) {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      print("$title\n$description");
      widget.noteModel.title = title!;
      widget.noteModel.description = description!;
      BlocProvider.of<NotesCubit>(context).getNotes();
      Navigator.pop(context);
    } else {
      autoValidateMode = AutovalidateMode.always;
      setState(() {});
    }
  }
}
