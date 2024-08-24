import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

part 'note_model.g.dart';

@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  @HiveField(0)
  String title;
  @HiveField(1)
  String description;
  @HiveField(2)
  DateTime dateTime;
  @HiveField(3)
  int? color;

  List<int> colors = [
    const Color(0xFFFFCD7A).value,
    const Color(0xFFE7E896).value,
    const Color(0xFF76D6EE).value,
    const Color(0xFFE2A7EA).value,
  ];
  NoteModel({
    required this.title,
    required this.description,
    required this.dateTime,
    this.color,
  }) {
    color ??= colors[Random().nextInt(colors.length)];
  }
}
