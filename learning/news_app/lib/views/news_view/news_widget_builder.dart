import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';
import 'package:news_app/services/news_services.dart';
import 'package:news_app/views/news_view/news_view.dart';

class NewWidgetBuilder extends StatefulWidget {
  const NewWidgetBuilder({
    super.key,
  });

  @override
  State<NewWidgetBuilder> createState() => _NewWidgetBuilderState();
}

class _NewWidgetBuilderState extends State<NewWidgetBuilder> {
  List<NewsModel> articles = [];

  @override
  void initState() {
    getGeneralNews();
    super.initState();
  }

  bool isLoading = true;

  Future<void> getGeneralNews() async {
    articles = await NewsServices().getNewsList();
    setState(() {});
    isLoading = false;
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const SliverFillRemaining(
            hasScrollBody: false,
            child: Center(child: CircularProgressIndicator()),
          )
        : articles.isEmpty
            ? Text("oops There was an error. Try again....")
            : NewsView(articles: articles);
  }
}
