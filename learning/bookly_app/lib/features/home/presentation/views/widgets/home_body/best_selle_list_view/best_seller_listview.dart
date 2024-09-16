import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'book_card.dart';

class BestSellerSliverList extends StatefulWidget {
  const BestSellerSliverList({super.key});

  @override
  State<BestSellerSliverList> createState() => _BestSellerSliverListState();
}

class _BestSellerSliverListState extends State<BestSellerSliverList> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: state.books.length,
              (BuildContext context, int index) {
                print(index);
                return Padding(
                  padding: kHorizontalPadding,
                  child: BookCard(bookModel: state.books[index]),
                );
              },
            ),
          );
        } else if (state is NewestBooksFailure) {
          return SliverToBoxAdapter(
              child: CustomErrorWidget(errMsg: state.errMsg));
        } else {
          return const SliverToBoxAdapter(child: CustomLoadingIndicator());
        }
      },
    );
  }
}
