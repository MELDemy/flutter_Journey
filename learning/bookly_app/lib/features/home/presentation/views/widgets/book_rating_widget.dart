import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:flutter/material.dart';

class BookRatingWidget extends StatelessWidget {
  const BookRatingWidget({
    required this.bookModel,
    super.key,
  });

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("⭐"),
        const SizedBox(width: 6.3),
        Text("${bookModel.rating}", style: Styles.textStyle16),
        const SizedBox(width: 5),
        Text(
          "(${bookModel.ratersCount})",
          style: Styles.textStyle14.copyWith(color: const Color(0xff707070)),
        ),
      ],
    );
  }
}
