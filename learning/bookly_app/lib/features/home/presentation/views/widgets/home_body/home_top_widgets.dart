import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'featured_horizontal_list_view.dart';

class HomeTopWidgets extends StatelessWidget {
  const HomeTopWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 32),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * .28,
            child: const FeaturedHorizontalListView(),
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
