import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_weather_app/cubit/home_cubit/home_view_cubit/home_view_cubit.dart';
import 'package:my_weather_app/models/weather_model.dart';
import 'package:my_weather_app/views/theme_color.dart';

class InfoWeatherBody extends StatelessWidget {
  const InfoWeatherBody({super.key});
  @override
  Widget build(BuildContext context) {
    HomeViewCubit homeViewCubit = BlocProvider.of<HomeViewCubit>(context);
    WeatherModel weatherModel = homeViewCubit.weatherModel!;
    log("${weatherModel.updatedTime.minute.toString()}");
    MaterialColor materialColor = getThemeColor(weatherModel.weatherCondition);
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [materialColor, materialColor[300]!, materialColor[50]!],
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InfoText(weatherModel.cityName),
            Text(
                "Updated at ${weatherModel.updatedTime.hour}:${weatherModel.updatedTime.minute == 0 ? "00" : weatherModel.updatedTime.minute}"),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 15),
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.network(weatherModel.imageLink),
                      Column(children: [
                        Text("Max temp: ${weatherModel.maxTemp}"),
                        Text("Min temp: ${weatherModel.minTemp}"),
                      ]),
                    ],
                  ),
                  Align(
                    heightFactor: 1,
                    child: InfoText("${weatherModel.temp}"),
                  ),
                ],
              ),
            ),
            InfoText(weatherModel.weatherCondition),
          ],
        ),
      ),
    );
  }
}

class InfoText extends StatelessWidget {
  const InfoText(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
      textAlign: TextAlign.center,
    );
  }
}
