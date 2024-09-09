import 'package:bookly_app/features/home/presentation/views/widgets/home_body/custom_home_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/home_body/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomHomeAppBar(),
      body: HomeViewBody(),
    );
  }
}
