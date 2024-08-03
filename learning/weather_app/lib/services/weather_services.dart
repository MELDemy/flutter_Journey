import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_dm.dart';

class WeatherService {
  final Dio dio;

  WeatherService(this.dio);

  final String baseUrl = "https://api.weatherapi.com/v1";
  final String apiKey = "fee25c97813442f58e2195947240108";
  Future<WeatherDM> getCurrentWeather({required String location}) async {
    try {
      Response response = await dio.get(
          '$baseUrl/forecast.json?key=$apiKey&q=$location&days=1&aqi=no&alerts=no');

      WeatherDM weatherDM = WeatherDM.fromJson(response.data);
      return weatherDM;
    } on DioException catch (e) {
      final String errMessage = e.response?.data['error']['message'] ??
          "Oops There was an error. try again later!!";
      log(errMessage);
      throw (errMessage);
    } catch (e) {
      log(e.toString());
      const String errMessage = "Oops There was an error. try again later!!";
      throw Exception(errMessage);
    }
  }
}
