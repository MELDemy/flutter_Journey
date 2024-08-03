import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weather_app/screens/home_screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: Builder(
        builder: (context) => BlocBuilder<GetWeatherCubit, WeatherState>(
          builder: (context, state) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Weather',
              theme: getTheme(context),
              home: const HomeScreen(),
            );
          },
        ),
      ),
    );
  }
}

ThemeData getTheme(context) {
  Color themeColor = getThemeColor(
      BlocProvider.of<GetWeatherCubit>(context).weatherDM?.weather);
  return ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: themeColor,
    ),
    appBarTheme: AppBarTheme(
      shadowColor: Colors.black,
      elevation: 5,
      backgroundColor: themeColor, // Set AppBar text and icon color
    ),
  );
}

MaterialColor getThemeColor(String? weatherCondition) {
  switch (weatherCondition) {
    case null:
      return Colors.blue;
    case "Sunny":
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
