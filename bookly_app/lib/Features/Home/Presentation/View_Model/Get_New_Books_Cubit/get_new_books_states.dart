import 'package:bookly_app/Features/Home/data/Models/book_model.dart';

abstract class NewBooksStates {}

class InitialState extends NewBooksStates {}

class LoadingState extends NewBooksStates{}

class SuccessfulyGetNewBooks extends NewBooksStates {
  final List<BookModel> newBooks;

  SuccessfulyGetNewBooks({required this.newBooks});
}

class FailuarGetNewBooks extends NewBooksStates  {
  final String errMessage;

  FailuarGetNewBooks({required this.errMessage});
}
