import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:my_weather_app/models/weather_model.dart';
import 'package:my_weather_app/services/weather_service.dart';
import 'package:my_weather_app/views/home_view/search_view/search_view.dart';

part 'home_view_state.dart';

class HomeViewCubit extends Cubit<HomeViewState> {
  HomeViewCubit() : super(HomeViewInitial());
  searchCityView(context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SearchView()));
  }

  String? errMsg;
  WeatherModel? weatherModel;
  viewCityInfo(context, cityName) async {
    try {
      emit(LoadingState());
      weatherModel = await WeatherService(Dio()).getWeather(cityName);
      emit(CityInfoState());
    } catch (e) {
      errMsg = e.toString();
      log("error message " + errMsg!);
      emit(FailureState(errMsg));
      throw (e);
    }
  }
}
