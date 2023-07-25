import 'package:book_app/Features/home/data/models/book_modle/book_modle.dart';
import 'package:book_app/Features/home/data/repos/home_repo.dart';
import 'package:book_app/core/error/faliure.dart';
import 'package:book_app/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImp implements HomeRepo{
  final ApiService apiService;
  HomeRepoImp(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBook()async {
   try {
     var data= await apiService.git(endpoint:"volumes?Filtering=free-ebooks&Sorting=newest &q=computer science");
     List<BookModel> books=[];
     for(var item in data["items"]){
       books.add(BookModel.fromJson(item));

     }
     return right(books);
   }  catch (e) {
     if(e is DioError){
return left( ServerFailure.fromDioError(e));
   }
     return left( ServerFailure(e.toString()));

   }


  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBook() async{
    try {
      var data= await apiService.git(endpoint:"volumes?Filtering=free-ebooks&q=programming");
      List<BookModel> books=[];
      for(var item in data["items"]){
        books.add(BookModel.fromJson(item));

      }
      return right(books);
    }  catch (e) {
      if(e is DioError){
        return left( ServerFailure.fromDioError(e));
      }
      return left( ServerFailure(e.toString()));

    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchSimilarBook({required String category}) async{

    try {
      var data= await apiService.git(endpoint:"volumes?Filtering=free-ebooks&Sorting=relevance&q=$category");
      List<BookModel> books=[];
      for(var item in data["items"]){
        books.add(BookModel.fromJson(item));

      }
      return right(books);
    }  catch (e) {
      if(e is DioError){
        return left( ServerFailure.fromDioError(e));
      }
      return left( ServerFailure(e.toString()));

    }
  }



}
