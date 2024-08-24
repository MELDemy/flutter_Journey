import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';

class ColorPickerList extends StatefulWidget {
  const ColorPickerList({super.key});
  @override
  State<ColorPickerList> createState() => _ColorPickerListState();
}

class _ColorPickerListState extends State<ColorPickerList> {
  final double _radius = 30;
  int currentIndex = 0;
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
                BlocProvider.of<AddNoteCubit>(context).noteColor =
                    kColorsList[index];
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

class ColorItem extends StatelessWidget {
  const ColorItem({
    super.key,
    required this.color,
    required this.radius,
    this.isSelected = false,
  });

  final Color color;
  final double radius;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        decoration: BoxDecoration(
          border: isSelected
              ? Border.all(
                  width: 2,
                  color: Colors.blue,
                )
              : null,
          borderRadius: BorderRadius.circular(radius),
        ),
        child: CircleAvatar(
          radius: radius,
          backgroundColor: color,
        ),
      ),
    );
  }
}
