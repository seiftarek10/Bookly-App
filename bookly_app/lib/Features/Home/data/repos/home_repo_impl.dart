import 'package:bookly_app/Core/errors/failuar.dart';
import 'package:bookly_app/Core/utils/api_service.dart';
import 'package:bookly_app/Features/Home/data/Models/book_model.dart';
import 'package:bookly_app/Features/Home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  HomeRepoImpl(this.apiService);
  ApiService apiService;

  @override
  Future<Either<Failuar, List<BookModel>>> getAllBooks() async {
    try {
      Map<String, dynamic> data =
          await apiService.get(uri: "volumes?q=programming");
      List<BookModel> books = [];
      for (int i = 0; i < data['items'].length; i++) {
        books.add(BookModel.fromjson(data, i));
      }
      print(books);
      return right(books);
    } catch (e) {
      if (e is DioException) {
        print(e.toString());
        return left(ServerFailuar.error(e));
      } else {
        print(e.toString());
        return left(ServerFailuar(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failuar, List<BookModel>>> getNewstBooks() async {
    try {
      Map<String, dynamic> data = await apiService.get(
          uri: "volumes?Filtering=free-ebooks&q=subject:Programming");
      List<BookModel> books = [];
      for (int i = 0; i < data['items'].length; i++) {
        books.add(BookModel.fromjson(data, i));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        print(e.toString());
        return left(ServerFailuar.error(e));
      } else {
        print(e.toString());
        return left(ServerFailuar(e.toString()));
      }
    }
  }
}
