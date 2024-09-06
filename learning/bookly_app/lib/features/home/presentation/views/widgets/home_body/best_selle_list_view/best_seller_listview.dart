import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/constants.dart';
import 'package:flutter/material.dart';

import 'book_card.dart';

class BestSellerSliverList extends StatefulWidget {
  const BestSellerSliverList({super.key});

  @override
  State<BestSellerSliverList> createState() => _BestSellerSliverListState();
}

class _BestSellerSliverListState extends State<BestSellerSliverList> {
  final BookModel bookModel = BookModel(
    title: "Harry Potter and the Goblet of Fire",
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
