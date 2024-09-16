import 'package:bloc/bloc.dart';
import 'package:bookly_app/core/errors/failure_class.dart';
import 'package:bookly_app/features/home/data/models/BookModel1.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());

  final HomeRepo homeRepo;

  fetchNewestBooks() async {
    emit(NewestBooksLoading());
    Either<Failure, List<BookModel>> result = await homeRepo.fetchNewestBooks();

    result.fold((failure) {
      emit(NewestBooksFailure(failure.errMsg));
    }, (books) {
      emit(NewestBooksSuccess(books));
    });
  }
}
