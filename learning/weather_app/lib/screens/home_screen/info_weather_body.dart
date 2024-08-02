import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_dm.dart';

class InfoWeatherBody extends StatefulWidget {
  const InfoWeatherBody({super.key});

  @override
  State<InfoWeatherBody> createState() => _InfoWeatherBodyState();
}

class _InfoWeatherBodyState extends State<InfoWeatherBody> {
  WeatherDM weatherInfo = WeatherDM(
    location: "ALexandria",
    updatedTime: "12pm",
    image: "assets/images/clear.png",
    temp: 17,
    maxTemp: 24,
    minTemp: 5,
    weather: "Light Rain",
  );

  @override
  Widget build(BuildContext context) {
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
                Image.asset(weatherInfo.image),
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
