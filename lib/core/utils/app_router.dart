import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/home/data/models/book_modle/book_modle.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_imol.dart';
import 'package:bookly_app/features/home/presentation/manager/simillar_books_cubit/simillar_book_cubit.dart';
import 'package:bookly_app/features/home/presentation/screens/book_details_screen.dart';
import 'package:bookly_app/features/home/presentation/screens/home_screen.dart';
import 'package:bookly_app/features/search/presentation/screens/search_screen.dart';
import 'package:bookly_app/features/splash/presentation/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kDetailsView = '/detailsView';
  static const kSearchView = '/searchView';
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
      ),
      GoRoute(
        path: kDetailsView,
        builder: (BuildContext context, GoRouterState state) {
          return BlocProvider(
            create: (context) => SimillarBookCubit(getIt.get<HomeRepoImpl>()),
            child: BookDetailsScreen(book: state.extra as BookModle),
          );
        },
      ),
      GoRoute(
        path: kSearchView,
        builder: (BuildContext context, GoRouterState state) {
          return const SearchScreen();
        },
      ),
    ],
  );
}
