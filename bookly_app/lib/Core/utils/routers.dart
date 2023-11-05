import 'package:bookly_app/Features/BookDetails/Presentation/View/book_details_view.dart';
import 'package:bookly_app/Features/Home/Presentation/View/home_view.dart';
import 'package:bookly_app/Features/Home/data/Models/book_model.dart';
import 'package:bookly_app/Features/SplachScreen/Presentation/View/splach_view.dart';
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
          builder: (context, state) =>  BookDetailsView(
           book: state.extra as BookModel, 
          ))
    ],
  );
}
