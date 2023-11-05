import 'package:bookly_app/Features/Home/data/Models/book_model.dart';

abstract class SimilersBooksStates {}

class InitialState extends SimilersBooksStates {}

class LoadingState extends SimilersBooksStates{}

class SuccessfulyGetBooks extends SimilersBooksStates {
  final List<BookModel> books;

  SuccessfulyGetBooks({required this.books});
}

class FailuarGetBooks extends SimilersBooksStates {
  final String errMessage;

  FailuarGetBooks({required this.errMessage});
}
