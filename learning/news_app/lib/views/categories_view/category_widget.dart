import 'package:flutter/material.dart';
import 'package:news_app/Screens/screen1.dart';
import 'package:news_app/models/category_model.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({required this.category, super.key});

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return CategoryPage(
              title: category.text,
              news: category.news,
            );
          }));
        },
        child: Container(
          height: 100,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              image: AssetImage(category.coverImage),
              fit: BoxFit.fill,
            ),
          ),
          alignment: Alignment.center,
          child: Text(
            category.text,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
