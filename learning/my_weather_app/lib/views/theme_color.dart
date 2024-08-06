import 'package:flutter/material.dart';

MaterialColor getThemeColor(String? weatherCondition) {
  switch (weatherCondition) {
    case null:
      return Colors.blue;
    case "Sunny":
    case "Clear":
      return Colors.orange;
    case "Partly cloudy":
    case "Patchy rain possible":
    case "Patchy rain nearby":
    case "Mist":
    case "Patchy light drizzle":
    case "Light drizzle":
    case "Freezing drizzle":
    case "Patchy light rain":
    case "Light rain":
    case "Light freezing rain":
    case "Light sleet":
    case "Light rain shower":
    case "Ice pellets":
    case "Light showers of ice pellets":
      return Colors.lightBlue;
    case "Cloudy":
    case "Overcast":
    case "Patchy sleet possible":
    case "Moderate or heavy sleet":
    case "Light sleet showers":
    case "Moderate or heavy sleet showers":
    case "Fog":
    case "Freezing fog":
      return Colors.grey;
    case "Heavy freezing drizzle":
    case "Moderate or heavy freezing rain":
      return Colors.lightBlue;
    case "Moderate rain at times":
    case "Moderate rain":
    case "Moderate or heavy rain shower":
    case "Heavy rain at times":
    case "Heavy rain":
    case "Torrential rain shower":
      return Colors.blueGrey;
    case "Thundery outbreaks possible":
    case "Patchy light rain with thunder":
    case "Moderate or heavy rain with thunder":
      return Colors.deepPurple;
    case "Patchy snow possible":
    case "Patchy light snow":
    case "Light snow":
    case "Patchy moderate snow":
    case "Moderate snow":
    case "Patchy heavy snow":
    case "Heavy snow":
    case "Light snow showers":
    case "Moderate or heavy snow showers":
    case "Patchy light snow with thunder":
    case "Moderate or heavy snow with thunder":
    case "Blowing snow":
    case "Blizzard":
      return Colors.grey;

    default:
      return Colors.blue;
  }
}
