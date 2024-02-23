import 'package:flutter/material.dart';

import 'package:roll_dice/dice_widget.dart';

class Gradiant_Container extends StatelessWidget {
  const Gradiant_Container({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
    decoration: const BoxDecoration(
    gradient: LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
    Color.fromARGB(255, 69, 17, 150),
    Color.fromRGBO(180, 155, 1, 1.0),
    ])),
    child: const Center(
    child: Dice_Widget(),
    ))
    ;
  }
}
