import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class BookImage extends StatelessWidget {
  const BookImage({super.key, this.assetImage});

  final String? assetImage;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 555 / 830,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(assetImage ?? AssetsData.testImage),
          ),
        ),
      ),
    );
  }
}
