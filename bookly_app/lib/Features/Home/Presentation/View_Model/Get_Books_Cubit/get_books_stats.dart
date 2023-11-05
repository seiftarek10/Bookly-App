import 'package:bookly_app/Features/Home/data/Models/book_model.dart';

abstract class BookStates {}

class InitialState extends BookStates {}

class LoadingState extends BookStates{}

class SuccessfulyGetBooks extends BookStates {
  final List<BookModel> books;

  SuccessfulyGetBooks({required this.books});
}

class FailuarGetBooks extends BookStates {
  final String errMessage;

  FailuarGetBooks({required this.errMessage});
}
