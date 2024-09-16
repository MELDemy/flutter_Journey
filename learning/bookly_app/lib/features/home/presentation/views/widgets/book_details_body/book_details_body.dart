import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/models/BookModel1.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_body/you_may_also_like_widget.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../book_image.dart';
import 'book_actions_widget.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key, required this.bookModel});

  final BookModel1 bookModel;

  @override
  Widget build(BuildContext context) {
    double imageHeight = MediaQuery.of(context).size.height * .28;
    return BlocProvider(
      create: (context) => SimilarBooksCubit(
          homeRepo: GetIt.I.get<HomeRepoImpl>(), bookModel1: bookModel),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _bookImage(imageHeight),
                const SizedBox(height: 43),
                _bookDetails(),
                const SizedBox(height: 18),
                BookRatingWidget(bookModel: bookModel),
                const SizedBox(height: 37),
                BookActions(bookModel: bookModel),
                const SizedBox(height: 60),
                const YouMayAlsoLikeWidget(),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ],
      ),
    );
  }

  SizedBox _bookImage(double imageHeight) {
    return SizedBox(
      height: imageHeight >= 500
          ? 500
          : imageHeight <= 200
              ? 200
              : imageHeight,
      child: BookImage(imageUrl: bookModel.volumeInfo?.imageLinks?.thumbnail),
    );
  }

  Widget _bookDetails() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Text(
            bookModel.volumeInfo?.title ?? "",
            style: Styles.textStyle30.copyWith(fontSize: 20),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 6),
          Opacity(
            opacity: .8,
            child: Text(
              _authorText(),
              style:
                  Styles.textStyle18.copyWith(fontFamily: kFont_MontserratFont),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  String _authorText() {
    List authors = bookModel.volumeInfo?.authors ?? [""];
    if (authors.isEmpty) {
      authors = [""];
    }

    return authors[0];
  }
}
