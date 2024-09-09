import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_horizontal_list_view.dart';
import 'package:flutter/material.dart';

class YouMayAlsoLikeWidget extends StatelessWidget {
  const YouMayAlsoLikeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: kHorizontalPadding,
          child: Text("You may also like", style: Styles.textStyle16),
        ),
        SizedBox(height: 100, child: FeaturedHorizontalListView()),
      ],
    );
  }
}
