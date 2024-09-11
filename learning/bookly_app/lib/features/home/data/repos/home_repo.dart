import 'package:bookly_app/core/errors/failure_class.dart';
import 'package:bookly_app/features/home/data/models/BookModel1.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel1>>> fetchNewestBooks();
  Future<Either<Failure, List<BookModel1>>> fetchFeaturedBooks();
}
