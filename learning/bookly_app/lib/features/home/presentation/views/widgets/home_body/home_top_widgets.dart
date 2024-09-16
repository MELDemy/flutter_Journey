import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'featured_horizontal_list_view.dart';

class HomeTopWidgets extends StatelessWidget {
  const HomeTopWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 32),
        FeaturedHorizontalListView(),
        Padding(
          padding: EdgeInsets.only(top: 50, bottom: 20, left: 30),
          child: Text("Best Seller", style: Styles.textStyle18),
        ),
      ],
    );
  }
}
