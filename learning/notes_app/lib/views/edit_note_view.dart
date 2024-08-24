import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/note_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/color_picker_list.dart';
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
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  late String? title = widget.noteModel.title;
  late String? description = widget.noteModel.description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Edit Note",
        icon: Icons.check,
        onIconPressed: () async {
          await editNote(context);
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
              ColorPickerEditView(noteModel: widget.noteModel),
              CustomTextButton(
                text: "Edit",
                onPressed: () async {
                  await editNote(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> editNote(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();

      widget.noteModel.title = title!;
      widget.noteModel.description = description!;
      await widget.noteModel.save();

      BlocProvider.of<NotesCubit>(context).getNotes();
      Navigator.pop(context);
    } else {
      autoValidateMode = AutovalidateMode.always;
      setState(() {});
    }
  }
}

class ColorPickerEditView extends StatefulWidget {
  const ColorPickerEditView({super.key, required this.noteModel});

  final NoteModel noteModel;
  @override
  State<ColorPickerEditView> createState() => _ColorPickerEditView();
}

class _ColorPickerEditView extends State<ColorPickerEditView> {
  final double _radius = 30;
  late int currentIndex;

  @override
  void initState() {
    super.initState();
    currentIndex = kColorsList.indexOf(Color(widget.noteModel.color));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: SizedBox(
        height: _radius * 2,
        child: ListView.builder(
          itemCount: kColorsList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                currentIndex = index;
                widget.noteModel.color = kColorsList[index].value;
                setState(() {});
              },
              child: ColorItem(
                radius: _radius,
                color: kColorsList[index],
                isSelected: currentIndex == index,
              ),
            );
          },
        ),
      ),
    );
  }
}
