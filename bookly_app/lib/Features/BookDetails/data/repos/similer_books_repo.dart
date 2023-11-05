import 'package:bookly_app/Core/errors/failuar.dart';
import 'package:bookly_app/Features/Home/data/Models/book_model.dart';

import 'package:dartz/dartz.dart';

abstract class SimilerBooksRepo{
  Future<Either<Failuar,List<BookModel>>> getSimilerBooks();
}