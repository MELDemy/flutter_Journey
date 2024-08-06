part of 'home_view_cubit.dart';

@immutable
sealed class HomeViewState {}

final class HomeViewInitial extends HomeViewState {}

final class FailureState extends HomeViewState {
  FailureState(this.errMsg);
  String? errMsg;
}

final class SearchViewState extends HomeViewState {}

final class CityInfoState extends HomeViewState {}

final class LoadingState extends HomeViewState {}
