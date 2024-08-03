class WeatherState {}

class InitialState extends WeatherState {}

class InfoWeatherState extends WeatherState {}

class FailureWeatherState extends WeatherState {
  String errorMessage = "oops There was an error, Try again later!!";
  FailureWeatherState(this.errorMessage);
}

class LodaingState extends WeatherState {}
