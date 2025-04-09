import 'package:bookly_app/features/home/presentation/screens/book_details_screen.dart';
import 'package:bookly_app/features/home/presentation/screens/home_screen.dart';
import 'package:bookly_app/features/splash/presentation/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kDetailsView = '/detailsView';
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashScreen();
        },
      ),
      GoRoute(
        path: kHomeView,
        builder: (BuildContext context, GoRouterState state) {
          return const HomeScreen();
        },
      ), GoRoute(
        path: kDetailsView,
        builder: (BuildContext context, GoRouterState state) {
          return const BookDetailsScreen();
        },
      ),
    ],
  );
}
