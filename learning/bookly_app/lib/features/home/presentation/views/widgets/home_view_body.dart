import 'package:bookly_app/features/home/presentation/views/widgets/best_selle_list_view/best_seller_listview.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_horizontal_list_view/featured_horizontal_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32),
      child: ListView(
        children: const [
          FeaturedHorizontalListView(),
          SizedBox(height: 50),
          BestSellerListView(),
        ],
      ),
    );
  }
}
