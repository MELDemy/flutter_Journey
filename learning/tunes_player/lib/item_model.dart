import 'package:flutter/material.dart';
import 'package:tunes_player/item.dart';

class ItemModel {
  final Color color;
  final String sound;

  ItemModel({required this.color, required this.sound});
}


class Items {
  List<ItemModel> items = [
    ItemModel(color: Colors.red, sound: 'sounds/note1.mp3'),
    ItemModel(color: Colors.orange, sound: 'sounds/note2.wav'),
    ItemModel(color: Colors.yellow, sound: 'sounds/note3.wav'),
    ItemModel(color: Colors.green, sound: 'sounds/note4.wav'),
    ItemModel(color: Colors.blue, sound: 'sounds/note5.wav'),
    ItemModel(color: Colors.cyanAccent, sound: 'sounds/note6.wav'),
    ItemModel(color: Colors.purple, sound: 'sounds/note7.wav'),
  ];

  List<ItemWidget> getItems() {
    return items.map((item)=> ItemWidget(item:item)).toList();
  }
}
