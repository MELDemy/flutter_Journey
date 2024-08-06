import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_weather_app/cubit/home_cubit/home_view_cubit/home_view_cubit.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("Weather Screen"),
      actions: [
        IconButton(
          onPressed: () {
            BlocProvider.of<HomeViewCubit>(context).searchCityView(context);
          },
          icon: const Icon(Icons.search),
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
