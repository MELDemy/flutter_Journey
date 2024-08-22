import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_text_button.dart';
import 'package:notes_app/widgets/custom_textfield.dart';

class AddNoteSheet extends StatefulWidget {
  const AddNoteSheet({super.key});

  @override
  State<AddNoteSheet> createState() => _AddNoteSheetState();
}

class _AddNoteSheetState extends State<AddNoteSheet> {
  String? title, description;

  final GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Padding(
        padding: EdgeInsets.only(
          right: 15.0,
          left: 15,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                      minHeight: (MediaQuery.of(context).size.height / 2) - 30),
                  child: Column(
                    children: [
                      SizedBox(height: 30),
                      CustomTextFormField(
                        label: "Title",
                        maxLines: 1,
                        onSaved: (value) {
                          this.title = value;
                        },
                      ),
                      SizedBox(height: 15),
                      CustomTextFormField(
                        label: "Content",
                        minLines: 5,
                        onSaved: (value) {
                          this.description = value;
                        },
                      ),
                    ],
                  ),
                ),
              ),
              BlocBuilder<AddNoteCubit, AddNoteState>(
                builder: (context, state) {
                  return CustomTextButton(
                    isLoading: state is AddNoteLoading,
                    text: "Add",
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        print("$title\n$description");
                        formKey.currentState!.save();
                        NoteModel noteModel = NoteModel(
                          title: title!,
                          description: description!,
                          dateTime: DateTime.now(),
                          color: Colors.red.value,
                        );
                        BlocProvider.of<AddNoteCubit>(context)
                            .addNote(noteModel);
                        // Navigator.pop(context);
                      } else {
                        autovalidateMode = AutovalidateMode.always;
                        setState(() {});
                      }
                    },
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
