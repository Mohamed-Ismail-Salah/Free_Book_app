part of 'news_book_cubit.dart';

@immutable
abstract class NewsBookState {}

class NewsBookInitial extends NewsBookState {}
class NewsBookLoading extends NewsBookState {}
class NewsBookFailure extends NewsBookState {
  final String errMessage;

  NewsBookFailure(this.errMessage);


}
class NewsBookSuccess extends NewsBookState {
  final List<BookModel> book;

  NewsBookSuccess(this.book);

 }