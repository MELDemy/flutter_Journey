import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/models/weather_dm.dart';

class InfoWeatherBody extends StatelessWidget {
  InfoWeatherBody({super.key});

  // WeatherDM(
  @override
  Widget build(BuildContext context) {
    WeatherDM weatherInfo = BlocProvider.of<GetWeatherCubit>(context).weatherDM;
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          WeatherText(weatherInfo.location),
          Text("Updated at ${weatherInfo.updatedTime}"),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/images/clear.png"),
                WeatherText("${weatherInfo.temp}"),
                Column(
                  children: [
                    Text("Max temp : ${weatherInfo.maxTemp}"),
                    Text("Min temp: ${weatherInfo.minTemp}"),
                  ],
                )
              ],
            ),
          ),
          WeatherText(weatherInfo.weather),
        ],
      )),
    );
  }
}

class WeatherText extends StatelessWidget {
  const WeatherText(this.text, {super.key});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    );
  }
}
