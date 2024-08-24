import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/color_picker_list.dart';
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

  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autoValidateMode,
      child: Padding(
        padding: const EdgeInsets.only(
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
                      minHeight:
                          (MediaQuery.of(context).size.height / 2) - 100),
                  child: Column(
                    children: [
                      const SizedBox(height: 30),
                      CustomTextFormField(
                        label: "Title",
                        maxLines: 1,
                        onSaved: (value) {
                          title = value;
                        },
                      ),
                      const SizedBox(height: 15),
                      CustomTextFormField(
                        label: "Content",
                        minLines: 5,
                        onSaved: (value) {
                          description = value;
                        },
                      ),
                    ],
                  ),
                ),
              ),
              const ColorPickerList(),
              BlocBuilder<AddNoteCubit, AddNoteState>(
                builder: (context, state) {
                  return CustomTextButton(
                    isLoading: state is AddNoteLoading,
                    text: "Add",
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        formKey.currentState!.save();

                        NoteModel noteModel = NoteModel(
                          title: title!,
                          description: description!,
                          dateTime: DateTime.now(),
                        );
                        BlocProvider.of<AddNoteCubit>(context)
                            .addNote(noteModel);
                        // Navigator.pop(context);
                      } else {
                        autoValidateMode = AutovalidateMode.always;
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
