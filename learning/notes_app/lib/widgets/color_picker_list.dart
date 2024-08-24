import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';

class ColorPickerList extends StatefulWidget {
  const ColorPickerList({super.key});
  @override
  State<ColorPickerList> createState() => _ColorPickerListState();
}

class _ColorPickerListState extends State<ColorPickerList> {
  final List<Color> colors = const [
    Color(0xFFFFCD7A), // Soft Orange
    Color(0xFFE7E896), // Light Yellow
    Color(0xFF76D6EE), // Light Blue
    Color(0xFFE2A7EA), // Light Purple
    Color(0xFFFFA6C1), // Soft Pink
    Color(0xFF9AD3BC), // Mint Green
    Color(0xFFFFA07A), // Light Coral
    Color(0xFFFAF884), // Pale Lemon Yellow
    Color(0xFFB39DDB), // Light Lavender
    Color(0xFFFFB4A2), // Pastel Peach
  ];

  final double _radius = 30;
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: SizedBox(
        height: _radius * 2,
        child: ListView.builder(
          itemCount: colors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                currentIndex = index;
                BlocProvider.of<AddNoteCubit>(context).noteColor =
                    colors[index];
                setState(() {});
              },
              child: ColorItem(
                radius: _radius,
                color: colors[index],
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
