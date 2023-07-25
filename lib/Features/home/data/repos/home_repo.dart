import 'package:book_app/Features/home/data/models/book_modle/book_modle.dart';
import 'package:book_app/core/error/faliure.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBook();
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBook();
  Future<Either<Failure, List<BookModel>>> fetchSimilarBook({required String category});
}
