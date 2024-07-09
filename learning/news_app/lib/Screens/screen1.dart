import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';
import 'package:news_app/widgets/appbar.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({required this.news, required this.title, super.key});

  final List<NewsModel> news;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: AppBarTitle(title: title), centerTitle: true),
        body: const Column(children: [
          // NewsView(),
        ]));
  }
}
