import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../data/models/book_modle/book_modle.dart';
import '../../../data/repos/home_repo.dart';

part 'news_book_state.dart';

class NewsBookCubit extends Cubit<NewsBookState> {
  NewsBookCubit(this.homeRepo) : super(NewsBookInitial());
  final HomeRepo homeRepo;

  Future<void>  newsBook()async
  {
    emit(NewsBookLoading());
    var result =await homeRepo.fetchBestSellerBook();
    result.fold((failure){
      emit(NewsBookFailure(failure.errmessage));
    }, (books){
      emit( NewsBookSuccess(books));

    }
    );

  }
}
