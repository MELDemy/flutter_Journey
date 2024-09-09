import 'package:bookly_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';

class CustomDetailsAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomDetailsAppBar({super.key});

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 26),
      child: AppBar(
        titleSpacing: 0.0,
        automaticallyImplyLeading: false,
        title: IconButton(
          tooltip: "Back",
          icon: const Icon(Icons.close_rounded, size: 30),
          onPressed: () => AppRouter.router.pop(),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart_outlined),
          )
        ],
      ),
    );
  }
}
