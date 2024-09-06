import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_image.dart';
import 'package:flutter/material.dart';

import 'book_rating_widget.dart';

class BookCard extends StatelessWidget {
  const BookCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            const BookImage(),
            const SizedBox(width: 30),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .58,
                    child: Text(
                      "Harry Potter and the Goblet of Fire",
                      style: Styles.textStyle20.copyWith(
                        fontWeight: FontWeight.normal,
                        fontFamily: kGTSectraFine,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(height: 3),
                  const Text("J.K. Rowling"),
                  const SizedBox(height: 3),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "19.99 € ",
                        style: Styles.textStyle20,
                      ),
                      BookRatingWidget(),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
