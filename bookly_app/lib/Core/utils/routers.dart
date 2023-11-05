import 'package:bookly_app/Core/utils/api_service.dart';
import 'package:bookly_app/Features/BookDetails/Presentation/View/book_details_view.dart';
import 'package:bookly_app/Features/BookDetails/Presentation/View_Model/Get_Similer_Books_Cubit/get_similer_books_cubit.dart';
import 'package:bookly_app/Features/BookDetails/data/repos/similer_books_repo_impl.dart';
import 'package:bookly_app/Features/Home/Presentation/View/home_view.dart';
import 'package:bookly_app/Features/Home/data/Models/book_model.dart';
import 'package:bookly_app/Features/SplachScreen/Presentation/View/splach_view.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoutes {
  static String kHomeRoute = '/home';
  static String kBoodDetailsRoute = '/bookDetails';


  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplachView(),
      ),
      GoRoute(path: kHomeRoute, builder: (context, state) => const HomeView()),
      GoRoute(
          path: kBoodDetailsRoute,
          builder: (context, state) => BlocProvider(
                create: (context) =>
                    SimilerBooksCubit(SimilerBooksImpl(ApiService(dio: Dio())))
                      ..getSimilerBooks(),
                child: BookDetailsView(
                  book: state.extra as BookModel,
                ),
              )),
    ],
  );
}
