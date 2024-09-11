import 'package:bookly_app/features/home/data/models/BookModel1.dart';

class ApiResponseModel {
  String? kind;
  num? totalItems;
  List<BookModel1>? items;

  ApiResponseModel({
    required this.kind,
    required this.totalItems,
    required this.items,
  });

  ApiResponseModel.fromJson(dynamic json) {
    kind = json['kind'];
    totalItems = json['totalItems'];
    if (json['items'] != null) {
      items = [];
      for (dynamic item in json['items']) {
        items?.add(BookModel1.fromJson(item));
      }
    }
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['kind'] = kind;
    map['totalItems'] = totalItems;
    if (items != null) {
      map['items'] =
          items?.map((BookModel1 bookModel) => bookModel.toJson()).toList();
    }
    return map;
  }
}
