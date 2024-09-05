import 'package:bookly_app/features/home/presentation/views/constants.dart';
import 'package:flutter/material.dart';

import 'book_card.dart';

class FeaturedHorizontalListView extends StatelessWidget {
  const FeaturedHorizontalListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .28,
      child: ListView.builder(
        padding: kHorizontalPadding,
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const FeaturedBookCard();
        },
      ),
    );
  }
}
