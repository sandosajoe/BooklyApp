import 'package:book_app/core/errors/failure.dart';
import 'package:book_app/features/home/data/models/books/books.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
 Future<Either<Failure,List<Books>>> featchAllBooks();
 Future<Either<Failure,List<Books>>> feachBestSellerBooks();

}
