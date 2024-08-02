import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weather_app/models/weather_dm.dart';
import 'package:weather_app/services/weather_services.dart';

class GetWeatherCubit extends Cubit<WeatherState> {
  GetWeatherCubit() : super(InitialState());
  late WeatherDM weatherDM;
  getWeather({required cityName}) async {
    try {
      weatherDM =
          await WeatherService(Dio()).getCurrentWeather(location: cityName);
      log(weatherDM.toString());
      emit(InfoWeatherState());
    } catch (e) {
      emit(FailureWeatherState());
    }
  }
}
