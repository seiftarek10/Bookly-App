import 'package:bookly_app/Core/utils/api_service.dart';
import 'package:bookly_app/Core/utils/routers.dart';
import 'package:bookly_app/Features/Home/Presentation/View_Model/Get_Books_Cubit/get_books_cubit.dart';
import 'package:bookly_app/Features/Home/Presentation/View_Model/Get_New_Books_Cubit/get_new_books_cubit.dart';
import 'package:bookly_app/Features/Home/data/repos/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              BooksCubit(HomeRepoImpl(ApiService(dio: Dio())))..getBooks(),
        ),
        BlocProvider(
          create: (context) => NewBooksCubit(HomeRepoImpl(ApiService(dio: Dio())))..getNewBooks(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRoutes.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: const Color(0xff100E23),
        ),
      ),
    );
  }
}
