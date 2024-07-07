import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:language/screens/classes/items_class.dart';
import 'package:language/screens/classes/view_widget.dart';

class PhraseWidget extends StatelessWidget {
  const PhraseWidget(
      {required this.item,
        required this.itemColor,
        super.key});

  final Item item;
  final int itemColor;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        color: Color(itemColor),
    child:Iteminfo(item:item)
    );
  }
}
