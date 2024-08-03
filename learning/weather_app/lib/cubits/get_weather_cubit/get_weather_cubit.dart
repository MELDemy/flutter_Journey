import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weather_app/models/weather_dm.dart';
import 'package:weather_app/services/weather_services.dart';

class GetWeatherCubit extends Cubit<WeatherState> {
  GetWeatherCubit() : super(InitialState());
  WeatherDM? weatherDM;
  getWeather({required cityName}) async {
    try {
      emit(LodaingState());
      weatherDM =
          await WeatherService(Dio()).getCurrentWeather(location: cityName);
      emit(InfoWeatherState());
    } catch (e) {
      emit(FailureWeatherState(e.toString()));
    }
  }
}
