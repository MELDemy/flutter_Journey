import 'package:bookly_app/features/home/presentation/views/constants.dart';
import 'package:flutter/material.dart';

import 'book_card.dart';

class BestSellerSliverList extends StatelessWidget {
  const BestSellerSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          print(index);
          return const Padding(
            padding: kHorizontalPadding,
            child: BookCard(),
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
