import 'package:bloc/bloc.dart';
import 'package:book_app/Features/home/data/repos/home_repo.dart';
import 'package:meta/meta.dart';

import '../../../data/models/book_modle/book_modle.dart';

part 'features_book_state.dart';

class FeaturesBookCubit extends Cubit<FeaturesBookState> {
  FeaturesBookCubit(this.homeRepo) : super(FeaturesBookInitial());
  final HomeRepo homeRepo;

  Future<void> fetchFeaturesBooks()async
  {
    emit(FeaturesBookLoading());
    var result =await homeRepo.fetchFeaturedBook();
    result.fold((failure){
emit(FeaturesBookFailure(failure.errmessage));
    }, (books){
      emit( FeaturesBookSuccess(books));
      
    }
    );

  }
}
