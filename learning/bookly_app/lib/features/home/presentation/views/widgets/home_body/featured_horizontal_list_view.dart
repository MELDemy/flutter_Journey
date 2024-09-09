import 'package:bookly_app/constants.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_image.dart';
import 'package:flutter/material.dart';

class FeaturedHorizontalListView extends StatelessWidget {
  const FeaturedHorizontalListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: kHorizontalPadding,
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(right: index == 9 ? 0 : 16.0),
          child: const BookImage(),
        );
      },
    );
  }
}
