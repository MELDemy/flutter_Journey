import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class _BookRatingWidget extends StatelessWidget {
  const _BookRatingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text("⭐"),
        const SizedBox(width: 6.3),
        const Text("4.8 ", style: Styles.textStyle16),
        const SizedBox(width: 5),
        Text(
          "(2390)",
          style: Styles.textStyle14.copyWith(color: const Color(0xff707070)),
        ),
      ],
    );
  }
}
