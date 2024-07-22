import 'package:flutter/material.dart';
import 'package:news_app/services/news_services.dart';
import 'package:news_app/views/news_view/news_widget_builder.dart';
import 'package:news_app/widgets/appbar.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({required this.category, super.key});

  final String category;

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  var news;

  @override
  void initState() {
    // TODO: implement initState
    news = NewsServices().getNewsList(category: widget.category);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: AppBarTitle(
              title: widget.category,
            ),
            centerTitle: true),
        body: Padding(
          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: CustomScrollView(slivers: [
            NewWidgetBuilder(
              news: news,
            ),
          ]),
        ));
  }
}
// import 'package:flutter/material.dart';
// import 'package:news_app/models/news_model.dart';
// import 'package:news_app/widgets/appbar.dart';
//
// class  extends StatelessWidget {
//   const CategoryPage({required this.news, required this.title, super.key});
//
//   final List<NewsModel> news;
//   final String title;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(title: AppBarTitle(title: title), centerTitle: true),
//         body: const Column(children: [
//           // NewsView(),
//         ]));
//   }
// }
