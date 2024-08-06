import 'dart:developer';

class WeatherModel {
  String cityName;
  DateTime updatedTime;
  double temp;
  double maxTemp;
  double minTemp;
  String imageLink;
  String weatherCondition;

  WeatherModel({
    required this.cityName,
    required this.updatedTime,
    required this.temp,
    required this.maxTemp,
    required this.minTemp,
    required this.imageLink,
    required this.weatherCondition,
  });

  factory WeatherModel.fromJson(json) {
    return WeatherModel(
      cityName: json['location']['name'],
      updatedTime: DateTime.parse(json['current']['last_updated']),
      temp: json['current']['temp_c'],
      maxTemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
      minTemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
      imageLink: "https:" + json['current']['condition']['icon'],
      weatherCondition: json['current']['condition']['text'],
    );
  }
}
