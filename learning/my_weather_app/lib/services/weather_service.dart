import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:my_weather_app/models/weather_model.dart';

class WeatherService {
  final Dio dio;
  WeatherService(this.dio);
  String? errMsg;
  String apiKey = "fee25c97813442f58e2195947240108";
  String baseUrl = "http://api.weatherapi.com/v1";
  Future<WeatherModel> getWeather(cityName) async {
    try {
      Response response = await dio.get(
          "$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=1&aqi=no&alerts=no");
      log(response.toString());

      WeatherModel weatherModel = WeatherModel.fromJson(response.data);

      return weatherModel;
    } on DioException catch (e) {
      String errMsg = e.response?.data['error']['message'];
      // log(errMsg.toString());
      throw (errMsg == null ? e : errMsg);
    } catch (e) {
      throw (e);
    }
  }
}
