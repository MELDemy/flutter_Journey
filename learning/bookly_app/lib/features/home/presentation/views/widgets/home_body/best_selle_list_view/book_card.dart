import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/models/BookModel1.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_image.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating_widget.dart';
import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  const BookCard({super.key, required this.bookModel});

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        AppRouter.router.push(AppRouter.kBookDetailsView, extra: bookModel);
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: SizedBox(
          height: 150,
          child: Row(
            children: [
              BookImage(imageUrl: bookModel.volumeInfo?.imageLinks?.thumbnail),
              const SizedBox(width: 30),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .58,
                      child: Text(
                        bookModel.volumeInfo?.title ?? "",
                        style: Styles.textStyle20.copyWith(
                          fontWeight: FontWeight.normal,
                          fontFamily: kFont_GTSectraFine,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(height: 3),
                    _authorText(),
                    const SizedBox(height: 3),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "${bookModel.saleInfo?.saleability} € ",
                          style: Styles.textStyle20,
                        ),
                        BookRatingWidget(bookModel: bookModel),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Text _authorText() {
    List authors = bookModel.volumeInfo?.authors ?? [""];
    if (authors.isEmpty) {
      authors = [""];
    }

    return Text(
      authors[0],
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}
