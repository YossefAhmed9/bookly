import 'package:bookly/search_screen.dart';
import 'package:go_router/go_router.dart';

import '../../features/book_details_view.dart';
import '../../features/presentation/home_page/home_page.dart';
abstract class AppRoutes{
   static final router = GoRouter(
    routes: [
      // GoRoute(
      //   path: '/',
      //   builder: (context, state) =>const SplashScreen(),
      // ),
      // GoRoute(
      //   path: '/homePage',
      //   builder: (context, state) =>const HomePage(),
      // ),
      GoRoute(
        path: '/',
        builder: (context, state) =>const HomePage(),
      ),
      GoRoute(
        path: '/bookDetails',
        builder: (context, state) =>const BookDetailsView(),
      ),
      GoRoute(
        path: '/search',
        builder: (context, state) =>const SearchScreen(),
      ),
    ],
  );
}
