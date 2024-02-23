import 'dart:math';

import 'package:flutter/material.dart';

class Dice_Widget extends StatefulWidget {
  const Dice_Widget({super.key});

  @override
  State<Dice_Widget> createState() => _Dice_WidgetState();
}

class _Dice_WidgetState extends State<Dice_Widget> {
  int dice_number = 1;
  final random = Random();

  void Roll_Dice() => dice_number = random.nextInt(6) + 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TextButton(
            onPressed: () => setState(Roll_Dice),
            child: Image.asset('assets/dice-$dice_number.png'))
      ],
    );
  }
}
