import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:flutter/material.dart';

class BookActions extends StatelessWidget {
  const BookActions({required this.bookModel, super.key});

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * .8;
    return Container(
      height: 45,
      width: width > 500 ? 500 : width,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              onPressed: () {},
              child: Center(
                child: Text("${bookModel.price} \$",
                    style: Styles.textStyle18.copyWith(color: Colors.black)),
              ),
            ),
          ),
          Expanded(
            child: CustomButton(
              onPressed: () {},
              backgroundColor: const Color(0xFFF18264),
              child: const Center(
                  child: Text("Free Preview", style: Styles.textStyle14)),
            ),
          ),
        ],
      ),
    );
  }
}
