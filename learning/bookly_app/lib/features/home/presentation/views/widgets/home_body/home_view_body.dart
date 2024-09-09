import 'package:bookly_app/features/home/presentation/views/widgets/home_body/best_selle_list_view/best_seller_listview.dart';
import 'package:flutter/material.dart';

import 'home_top_widgets.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: HomeTopWidgets()),
        BestSellerSliverList(),
      ],
    );
  }
}
