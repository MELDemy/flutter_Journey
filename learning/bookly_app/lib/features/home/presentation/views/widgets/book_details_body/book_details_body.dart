import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:flutter/material.dart';

import '../book_image.dart';
import '../book_rating_widget.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({
    super.key,
    required this.bookModel,
  });

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 300,
          child: BookImage(assetImage: AssetsData.testImage),
        ),
        Text(bookModel.title,
            style: Styles.textStyle20.copyWith(fontFamily: kGTSectraFine)),
        Text(bookModel.author, style: Styles.textStyle16),
        BookRatingWidget(bookModel: bookModel),
      ],
    );
  }
}
