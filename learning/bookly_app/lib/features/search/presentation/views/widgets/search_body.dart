import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/models/BookModel1.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/home_body/best_selle_list_view/book_card.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/custon_search_text_field.dart';
import 'package:flutter/material.dart';

class SearchBody extends StatelessWidget {
  const SearchBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(),
          SizedBox(height: 20),
          Text("Results", style: Styles.textStyle18),
          SizedBox(height: 10),
          Expanded(
            child: SearchResultsListView(),
          )
        ],
      ),
    );
  }
}

class SearchResultsListView extends StatefulWidget {
  const SearchResultsListView({
    super.key,
  });

  @override
  State<SearchResultsListView> createState() => _SearchResultsListViewState();
}

class _SearchResultsListViewState extends State<SearchResultsListView> {
  final BookModel1 bookModel = BookModel1();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return BookCard(bookModel: bookModel);
      },
    );
  }
}
