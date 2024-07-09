import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';
import 'package:news_app/views/news_view/news_widget.dart';

class NewsView extends StatelessWidget {
  NewsView({required this.articles, super.key});

  List<NewsModel> articles;

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
      childCount: articles.length,
      (context, index) {
        return NewsWidget(news: articles[index]);
      },
    ));
  }
}

// @override
// Widget build(BuildContext context) {
//   return Expanded(
//     flex: 1,
//     child: Padding(
//       padding: const EdgeInsets.fromLTRB(20,0,20,0),
//       child: SingleChildScrollView(
//         child: Column(
//           children:  news.map((e) => NewsWidget(news:e)).toList(),
//         ),
//       ),
//     ),
//   );
// }
// }
