import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {this.onChanged, this.hintText, this.inputType, this.label, super.key});
  Function(String)? onChanged;
  final String? hintText;
  final TextInputType? inputType;
  final String? label;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        keyboardType: inputType,
        validator: (data) {
          if (data!.isEmpty) {
            return "this field is empty";
          }
          return null;
        },
        minLines: 1,
        maxLines: 5,
        style: TextStyle(
          color: Colors.black,
        ),
        onChanged: onChanged,
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          label: label == null ? null : Text(label!),
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.black,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(15),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
