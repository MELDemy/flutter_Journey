import 'package:bookly_app/features/home/presentation/views/widgets/featured_horizontal_list_view/featured_horizontal_list_view.dart';
import 'package:flutter/material.dart';

import 'best_selle_list_view/best_seller_listview.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: FeaturedHorizontalListView()),
        BestSellerSliverList(),
      ],
    );
  }
}
