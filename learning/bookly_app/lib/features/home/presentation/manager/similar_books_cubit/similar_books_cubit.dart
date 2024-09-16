import 'package:bloc/bloc.dart';
import 'package:bookly_app/core/errors/failure_class.dart';
import 'package:bookly_app/features/home/data/models/BookModel1.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit({required this.homeRepo, required this.bookModel1})
      : super(SimilarBooksInitial());

  final HomeRepo homeRepo;
  BookModel1 bookModel1;
  fetchSimilarBooks() async {
    emit(SimilarBooksLoading());
    Either<Failure, List<BookModel1>> result = await homeRepo.fetchSimilarBooks(
        category: bookModel1.volumeInfo?.categories?[0] ?? "");

    result.fold((failure) {
      emit(SimilarBooksFailure(failure.errMsg));
    }, (books) {
      emit(SimilarBooksSuccess(books));
    });
  }
}
