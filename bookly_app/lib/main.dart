import 'package:bookly_app/Core/utils/api_service.dart';
import 'package:bookly_app/Core/utils/routers.dart';
import 'package:bookly_app/Features/Home/data/repos/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

void main() {
  HomeRepoImpl(ApiService(dio: Dio())).getAllBooks();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRoutes.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xff100E23),
      ),
    );
  }
}
