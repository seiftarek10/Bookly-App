import 'package:bookly_app/Core/errors/failuar.dart';
import 'package:bookly_app/Core/utils/api_service.dart';

import 'package:bookly_app/Features/BookDetails/data/repos/similer_books_repo.dart';
import 'package:bookly_app/Features/Home/data/Models/book_model.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SimilerBooksImpl extends SimilerBooksRepo {
  SimilerBooksImpl(this.apiService);
  ApiService apiService;
  @override
  Future<Either<Failuar, List<BookModel>>> getSimilerBooks() async {
    try {
      var data = await apiService.get(
          uri:
              'volumes?Filtering=free-ebooks&Sorting=relevance &q=subject:Programming');
      List<BookModel> newBooks = [];
      for (int i = 0; i < data['items'].length; i++) {
        newBooks.add(BookModel.fromjson(data, i));
      }
      return right(newBooks);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailuar(e.toString()));
      } else {
        return left(ServerFailuar(e.toString()));
      }
    }
  }
}
