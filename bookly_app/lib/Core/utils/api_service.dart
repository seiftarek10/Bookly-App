import 'package:dio/dio.dart';

class ApiService {
  final _baseurl = 'https://www.googleapis.com/books/v1/';
  final Dio dio;

  ApiService({required this.dio});
  Future<Map<String, dynamic>> get({required String uri}) async {
    var response = await dio.get("$_baseurl$uri");
    return response.data;
  }
}
