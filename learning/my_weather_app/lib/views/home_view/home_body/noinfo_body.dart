import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_weather_app/cubit/home_cubit/home_view_cubit/home_view_cubit.dart';

class NoInfoBody extends StatelessWidget {
  NoInfoBody({this.errMsg, super.key});
  String? errMsg;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomText(
            text: errMsg == null ? "Welcome to Weather App" : errMsg!,
          ),
          TextButton(
            onPressed: () {
              BlocProvider.of<HomeViewCubit>(context).searchCityView(context);
            },
            child: CustomText(text: "Search a city 🔍"),
          )
        ],
      ),
    );
  }
}

class CustomText extends StatelessWidget {
  const CustomText({required this.text, super.key});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 25),
      textAlign: TextAlign.center,
    );
  }
}
