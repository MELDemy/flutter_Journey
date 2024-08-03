import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/main.dart';
import 'package:weather_app/models/weather_dm.dart';

class InfoWeatherBody extends StatelessWidget {
  const InfoWeatherBody({super.key});

  // WeatherDM(
  @override
  Widget build(BuildContext context) {
    WeatherDM weatherInfo =
        BlocProvider.of<GetWeatherCubit>(context).weatherDM!;
    DateTime updatedTime = weatherInfo.updatedTime;
    MaterialColor gradientColor = getThemeColor(weatherInfo.weather);
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [gradientColor, gradientColor[300]!, gradientColor[50]!],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            WeatherText(weatherInfo.location),
            Text(
              "Updated at ${updatedTime.hour}:${updatedTime.minute}",
              style: const TextStyle(fontSize: 18),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  NetworkImage(weatherInfo),
                  WeatherText("${weatherInfo.temp.round()}"),
                  Column(
                    children: [
                      Text("Max temp : ${weatherInfo.maxTemp.round()}"),
                      Text("Min temp: ${weatherInfo.minTemp.round()}"),
                    ],
                  )
                ],
              ),
            ),
            WeatherText(weatherInfo.weather),
          ],
        ),
      ),
    );
  }

  Image NetworkImage(WeatherDM weatherInfo) {
    return weatherInfo.imageUrl == null
        ? Image.asset("assets/images/clear.png")
        : Image.network(
            weatherInfo.imageUrl!,
            fit: BoxFit.fill,
            loadingBuilder: (BuildContext context, Widget child,
                ImageChunkEvent? loadingProgress) {
              if (loadingProgress == null) return child;
              return Center(
                child: CircularProgressIndicator(
                  value: loadingProgress.expectedTotalBytes != null
                      ? loadingProgress.cumulativeBytesLoaded /
                          loadingProgress.expectedTotalBytes!
                      : null,
                ),
              );
            },
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
      style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    );
  }
}
