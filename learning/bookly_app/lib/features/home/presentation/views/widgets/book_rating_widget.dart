import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/models/BookModel1.dart';
import 'package:flutter/material.dart';

class BookRatingWidget extends StatelessWidget {
  const BookRatingWidget({required this.bookModel, super.key});

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("⭐"),
        const SizedBox(width: 6.3),
        Text("${bookModel.volumeInfo?.averageRating ?? 0}",
            style: Styles.textStyle16),
        const SizedBox(width: 5),
        Opacity(
          opacity: .5,
          child: Text(
            "(${bookModel.volumeInfo?.ratingsCount ?? 0})",
            style: Styles.textStyle14,
          ),
        ),
      ],
    );
  }
}
