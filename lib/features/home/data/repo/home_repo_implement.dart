import 'package:book_app/core/errors/failure.dart';
import 'package:book_app/core/utils/api_service.dart';
import 'package:book_app/features/home/data/models/books/books.dart';
import 'package:book_app/features/home/data/repo/home_repo.dart';
import 'package:dartz/dartz.dart';

 class HomeRepoImplement implements HomeRepo {
  final ApiServices apiServices;

  HomeRepoImplement(this.apiServices);

  @override
  Future<Either<Failure, List<Books>>> featchAllBooks() async {
    try {
      var data = await apiServices.get(
          endPoint: "volumes?Filtering=free-ebooks&q=subject:");
      List <Books>books = [];
      for (var i in data["items"]) {
        books.add(Books.fromJson(i));
      }
     return right(books);
    } catch (e) {
     return left(ServerError(e.toString()));
    }
    // TODO: implement feachBestSellerBooks
   //throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Books>>>feachBestSellerBooks() async{
     try {
      var data = await apiServices.get(
          endPoint: "volumes?Filtering=free-ebooks&q=subject:&Sorting=newest");
      List <Books>books = [];
      for (var i in data["items"]) {
        books.add(Books.fromJson(i));
      }
     return right(books);
    } catch (e) {
     return left(ServerError(e.toString()));
    }
    // TODO: implement featchAllBooks
  
  }
  
}
