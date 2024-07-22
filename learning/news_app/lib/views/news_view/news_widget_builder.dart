import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';
import 'package:news_app/views/news_view/news_view.dart';

// class NewWidgetBuilder extends StatefulWidget {
//   const NewWidgetBuilder({
//     super.key,
//   });
//
//   @override
//   State<NewWidgetBuilder> createState() => _NewWidgetBuilderState();
// }

class NewWidgetBuilder extends StatelessWidget {
  NewWidgetBuilder({required this.news, super.key});

  Future<List<NewsModel>> news;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: news,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsView(
              articles: snapshot.data ?? [],
            );
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
                child: Text("oops There was an error. Try again...."));
          } else {
            return const LoadingIndicator();
          }
        });
  }
}

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverFillRemaining(
      hasScrollBody: false,
      child: Center(child: CircularProgressIndicator()),
    );
  }
}

// List<NewsModel> articles = [];

// @override
// void initState() {
//   getGeneralNews();
//   super.initState();
// }
//
// bool isLoading = true;

// Future<void> getGeneralNews() async {
//   articles = await NewsServices().getNewsList();
//   setState(() {});
//   isLoading = false;
// }

// isLoading
//     ? const SliverFillRemaining(
//         hasScrollBody: false,
//         child: Center(child: CircularProgressIndicator()),
//       )
//     : articles.isEmpty
//         ? SliverToBoxAdapter(
//             child: Text("oops There was an error. Try again...."))
//         : NewsView(articles: articles);
// }
// }
