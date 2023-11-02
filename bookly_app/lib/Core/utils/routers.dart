import 'package:bookly_app/Features/Home/Presentation/View/home_view.dart';
import 'package:bookly_app/Features/SplachScreen/Presentation/View/splach_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoutes {
  static String kHomeRoute = '/home';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplachView(),
      ),
      GoRoute(
        path: kHomeRoute,
        builder: (context,state)=> const HomeView()
        )
    ],
  );
}
