import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {this.minLines = 1,
      this.initialValue,
      this.label = "",
      this.onChanged,
      this.maxLines = 100,
      super.key});

  final String label;
  final String? initialValue;
  final int minLines, maxLines;
  final Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (data) {
        if (data!.isEmpty) {
          return "Can't be empty";
        }
        return null;
      },
      initialValue: initialValue,
      onChanged: onChanged,
      minLines: minLines,
      maxLines: maxLines,
      decoration: InputDecoration(
        border: BorderLines(),
        enabledBorder: BorderLines(),
        label: Text(
          label,
          style: TextStyle(color: kPrimaryColor),
        ),
      ),
    );
  }

  OutlineInputBorder BorderLines() {
    return OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
      borderRadius: BorderRadius.circular(8),
    );
  }
}
//
// class CustomTextFormField extends StatelessWidget {
//   const CustomTextFormField(
//       {this.onChanged,
//       this.hintText,
//       this.label,
//       this.minLines = 1,
//       super.key});
//   final Function(String)? onChanged;
//   final String? hintText;
//   final Widget? label;
//   final int? minLines;
//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       validator: (data) {
//         if (data!.isEmpty) {
//           return "Can't be empty";
//         }
//         return null;
//       },
//       minLines: minLines,
//       maxLines: 100,
//       style: TextStyle(
//         color: Colors.white,
//       ),
//       onChanged: onChanged,
//       decoration: InputDecoration(
//         label: label,
//         hintText: hintText,
//         hintStyle: TextStyle(
//           color: Colors.white,
//         ),
//         enabledBorder: OutlineInputBorder(
//           borderSide: BorderSide(color: Colors.white),
//         ),
//         border: OutlineInputBorder(
//           borderSide: BorderSide(color: Colors.white),
//         ),
//       ),
//     );
//   }
// }
