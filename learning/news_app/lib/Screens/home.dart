import 'package:flutter/material.dart';
import 'package:news_app/services/news_services.dart';
import 'package:news_app/views/categories_view/categories_view.dart';
import 'package:news_app/views/news_view/news_widget_builder.dart';
import 'package:news_app/widgets/appbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var news;

  @override
  void initState() {
    // TODO: implement initState
    news = NewsServices().getNewsList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const AppBarTitle(
              title: "Cloud",
            ),
            centerTitle: true),
        body: Padding(
          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: CustomScrollView(slivers: [
            SliverToBoxAdapter(child: CategoriesView()),
            NewWidgetBuilder(
              news: news,
            ),
          ]),
        ));
  }
}
