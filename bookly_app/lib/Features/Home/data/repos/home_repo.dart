import 'package:bookly_app/Core/errors/failuar.dart';
import 'package:bookly_app/Features/Home/data/Models/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failuar,List<BookModel>>> getAllBooks();
  Future<Either<Failuar,List<BookModel>>> getNewstBooks();
  
}
