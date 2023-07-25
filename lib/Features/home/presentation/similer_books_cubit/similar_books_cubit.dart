import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

import '../../data/models/book_modle/book_modle.dart';
import '../../data/repos/home_repo.dart';
part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());
  final HomeRepo homeRepo;

  Future<void> fetchSimilarBooks({required String category })async
  {
    emit(SimilarBooksLoading());
    var result =await homeRepo.fetchSimilarBook(category: category);
    result.fold((failure){
      emit(SimilarBooksFailure(failure.errmessage));
    }, (books){
      emit( SimilarBooksSuccess(books));

    }
    );

  }
}
