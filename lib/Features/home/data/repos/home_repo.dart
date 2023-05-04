import 'package:book_app/Features/home/data/models/book_modle/book_modle.dart';
import 'package:book_app/core/error/faliure.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Filure, List<BookModle>>> fetchBestSellerBook();
  Future<Either<Filure, List<BookModle>>> fetchFeaturedBook();
}
