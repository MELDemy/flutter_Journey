import 'package:bookly_app/features/home/data/models/BookModel1.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_body/book_details_body.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_details_body/custom_details_app_bar.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomDetailsAppBar(),
      body: BookDetailsBody(bookModel: bookModel),
    );
  }
}
