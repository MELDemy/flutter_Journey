import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/constants.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_image.dart';
import 'package:flutter/material.dart';

class FeaturedHorizontalListView extends StatelessWidget {
  const FeaturedHorizontalListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 32),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * .28,
            child: ListView.builder(
              padding: kHorizontalPadding,
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(right: index == 9 ? 0 : 16.0),
                  child: const BookImage(),
                );
              },
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 50, bottom: 20, left: 30),
          child: Text("Best Seller", style: Styles.textStyle18),
        ),
      ],
    );
  }
}
