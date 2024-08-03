class WeatherDM {
  String location, weather;
  String? imageUrl;
  DateTime updatedTime;
  double temp, maxTemp, minTemp;

  WeatherDM({
    required this.location,
    required this.updatedTime,
    this.imageUrl,
    required this.temp,
    required this.maxTemp,
    required this.minTemp,
    required this.weather,
  });

  factory WeatherDM.fromJson(json) {
    return WeatherDM(
      location: json['location']['name'],
      updatedTime: DateTime.parse(json['current']['last_updated']),
      imageUrl:
          "https:${json['forecast']['forecastday'][0]['day']['condition']['icon']}",
      temp: json['current']['temp_c'],
      maxTemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
      minTemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
      weather: json['forecast']['forecastday'][0]['day']['condition']['text'],
    );
  }
}
