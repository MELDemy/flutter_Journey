import 'package:hive/hive.dart';

part 'note_model.g.dart';

@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  @HiveField(0)
  String title;
  @HiveField(1)
  String description;
  @HiveField(2)
  final DateTime dateTime;
  @HiveField(3)
  int color;

  NoteModel({
    required this.title,
    required this.description,
    required this.dateTime,
    this.color = 0,
  });
}
