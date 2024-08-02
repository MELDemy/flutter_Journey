class WeatherDM {
  String location, updatedTime, image, weather;
  double temp, maxTemp, minTemp;

  WeatherDM({
    required this.location,
    required this.updatedTime,
    this.image = "assets/images/clear.png",
    required this.temp,
    required this.maxTemp,
    required this.minTemp,
    required this.weather,
  });

  factory WeatherDM.fromJson(json) {
    return WeatherDM(
      location: json['location']['name'],
      updatedTime: json['current']['last_updated'],
      image: json['forecast']['forecastday'][0]['day']['condition']['icon'],
      temp: json['current']['temp_c'],
      maxTemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
      minTemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
      weather: json['forecast']['forecastday'][0]['day']['condition']['text'],
    );
  }
}
