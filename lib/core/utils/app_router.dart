import 'package:book_app/Features/Splash/splash_view.dart';
import 'package:book_app/Features/home/data/models/book_modle/book_modle.dart';
import 'package:book_app/Features/home/data/repos/hom_repo_implemntaion.dart';
import 'package:book_app/Features/home/presentation/similer_books_cubit/similar_books_cubit.dart';
import 'package:book_app/Features/home/presentation/views/home_view.dart';
import 'package:book_app/core/utils/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../Features/home/presentation/views/book_detalis_view.dart';
import '../../Features/search/presentation/view/Search.dart';

abstract class AppRouter {
  static const kHome = '/Home';
  static const kBookDetailsView = '/BookDetailsView';
  static const kBookSearchView = '/BookSearchView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: kHome,
        builder: (context, state) => Home(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) =>  BlocProvider(
            create: ( context)  =>SimilarBooksCubit(getIt.get<HomeRepoImp>()),
        child:   BookDetailsView(
          bookModel:  state.extra as BookModel,

        )),
      ),
      GoRoute(
        path: kBookSearchView,

        builder: (context, state) =>  BlocProvider(
  create: ( context)  =>SimilarBooksCubit(getIt.get<HomeRepoImp>()),
  child: const Search(),
        )),
    ],
  );
}
