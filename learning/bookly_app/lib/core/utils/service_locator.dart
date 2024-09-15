import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

void getItSetup() {
  GetIt.I.registerSingleton<ApiService>(ApiService(Dio()));
  GetIt.I.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(GetIt.I.get<ApiService>()),
  );
}
