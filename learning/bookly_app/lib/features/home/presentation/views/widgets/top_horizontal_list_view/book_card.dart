import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class FeaturedBookCard extends StatelessWidget {
  const FeaturedBookCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16),
      child: Image.asset(AssetsData.testImage),
    );
  }
}
