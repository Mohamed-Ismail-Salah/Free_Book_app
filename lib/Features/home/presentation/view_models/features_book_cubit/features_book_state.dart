part of 'features_book_cubit.dart';

@immutable
abstract class FeaturesBookState {}

class FeaturesBookInitial extends FeaturesBookState {}
class FeaturesBookLoading extends FeaturesBookState {}
class FeaturesBookFailure extends FeaturesBookState {
  final String errMessage;

  FeaturesBookFailure(this.errMessage);
}
class FeaturesBookSuccess extends FeaturesBookState {
  final List<BookModel> book;

  FeaturesBookSuccess(this.book);
}