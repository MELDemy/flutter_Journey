import 'package:bookly_app/constants.dart';
import 'package:bookly_app/features/home/data/models/book_model2.dart';
import 'package:flutter/material.dart';

import 'book_card.dart';

class BestSellerSliverList extends StatefulWidget {
  const BestSellerSliverList({super.key});

  @override
  State<BestSellerSliverList> createState() => _BestSellerSliverListState();
}

class _BestSellerSliverListState extends State<BestSellerSliverList> {
  final BookModel2 bookModel = BookModel2(
    title: "The Jungle Book",
    author: "Rudyard Kipling",
    price: 19.99,
    rating: 4.8,
    ratersCount: 2390,
  );

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          print(index);
          return Padding(
            padding: kHorizontalPadding,
            child: BookCard(bookModel: bookModel),
          );
        },
        childCount: 100, // Adjust this if you have multiple items
      ),
    );
  }
}
// return ListView.builder(
//   padding: kHorizontalPadding,
//   physics: const NeverScrollableScrollPhysics(),
//   itemCount: 100,
//   itemBuilder: (context, index) {
//     print(index);
//     return const BookCard();
//   },
// );
