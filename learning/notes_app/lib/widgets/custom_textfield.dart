import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    this.onChanged,
    this.hintText,
    this.label,
    this.minLines = 1,
    super.key,
  });

  final Function(String)? onChanged;
  final String? hintText;
  final Widget? label;
  final int? minLines;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextFormField(
        validator: (data) {
          if (data!.isEmpty) {
            return "Can't be empty";
          }
          return null;
        },
        minLines: minLines,
        maxLines: 100,
        style: TextStyle(
          color: Colors.white,
        ),
        onChanged: onChanged,
        decoration: InputDecoration(
          label: label,
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.white,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
