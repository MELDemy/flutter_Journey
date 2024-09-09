import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_body/you_may_also_like_widget.dart';
import 'package:flutter/material.dart';

import '../book_image.dart';
import '../book_rating_widget.dart';
import 'book_actions_widget.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    double imageHeight = MediaQuery.of(context).size.height * .33;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Column(
            children: [
              SizedBox(
                height: imageHeight >= 500
                    ? 500
                    : imageHeight <= 200
                        ? 200
                        : imageHeight,
                child: const BookImage(assetImage: AssetsData.testImage),
              ),
              const SizedBox(height: 43),
              Text(bookModel.title, style: Styles.textStyle30),
              const SizedBox(height: 6),
              Opacity(
                opacity: .8,
                child: Text(
                  bookModel.author,
                  style: Styles.textStyle18
                      .copyWith(fontFamily: kFont_MontserratFont),
                ),
              ),
              const SizedBox(height: 18),
              BookRatingWidget(bookModel: bookModel),
              const SizedBox(height: 37),
              BookActions(bookModel: bookModel),
              const Expanded(child: SizedBox(height: 50)),
              const YouMayAlsoLikeWidget(),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ],
    );
  }
}
