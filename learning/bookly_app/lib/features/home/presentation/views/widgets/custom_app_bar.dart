import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context) {
    const double padding = 8.0;
    return AppBar(
      title: Padding(
        padding: const EdgeInsets.only(left: padding),
        child: Image.asset(
          AssetsData.logo,
          height: 16,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: padding),
          child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                size: 30,
              )),
        ),
      ],
    );
  }
}
