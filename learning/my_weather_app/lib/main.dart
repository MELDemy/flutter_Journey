import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_weather_app/cubit/home_cubit/home_view_cubit/home_view_cubit.dart';
import 'package:my_weather_app/views/home_view/home_view.dart';
import 'package:my_weather_app/views/theme_color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => HomeViewCubit(),
        child: BlocBuilder<HomeViewCubit, HomeViewState>(
          builder: (context, state) {
            MaterialColor materialColor = getThemeColor(
                BlocProvider.of<HomeViewCubit>(context)
                    .weatherModel
                    ?.weatherCondition);
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Weather App',
              theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: materialColor),
                appBarTheme: AppBarTheme(
                  color: materialColor,
                ),
              ),
              home: HomeView(),
            );
          },
        ));
  }
}
