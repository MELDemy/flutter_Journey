import 'package:bookly_app/core/errors/failure_class.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home/data/models/BookModel1.dart';
import 'package:bookly_app/features/home/data/models/api_response_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);

  testFetch() async {
    Map<String, dynamic> response = await apiService.get(
        endPoint:
            "volumes?q=subject:engineering&filter=free-ebooks&Sorting=newest");

    var apiResponse = ApiResponseModel.fromJson(response);
    print(apiResponse.items?[0].kind);
  }

  @override
  Future<Either<Failure, List<BookModel1>>> fetchNewestBooks() async {
    try {
      Map<String, dynamic> response = await apiService.get(
          endPoint:
              "volumes?q=subject:engineering&filter=free-ebooks&Sorting=newest");

      ApiResponseModel apiResponse = ApiResponseModel.fromJson(response);

      return right(apiResponse.items ?? []);
    } on DioException catch (e) {
      return left(ServerFailure.fromDioException(e));
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel1>>> fetchFeaturedBooks() {
    // TODO: implement fetchNewestBooks
    throw UnimplementedError();
  }
}
