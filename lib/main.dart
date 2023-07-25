import 'package:book_app/Features/home/data/repos/hom_repo_implemntaion.dart';
import 'package:book_app/Features/home/presentation/view_models/features_book_cubit/features_book_cubit.dart';
import 'package:book_app/Features/home/presentation/view_models/news_books_cubit/news_book_cubit.dart';
 import 'package:book_app/core/utils/app_router.dart';
import 'package:book_app/core/utils/service_locator.dart';
 import 'package:flutter/material.dart';
import 'constants.dart';
 import 'package:flutter_bloc/flutter_bloc.dart';


void main() {
  setup();
  runApp(const Book());
}

class Book extends StatelessWidget {
  const Book({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  MultiBlocProvider(
     providers: [
      BlocProvider(create: (context)=>FeaturesBookCubit(
        getIt.get<HomeRepoImp>())..fetchFeaturesBooks()
      ),
       BlocProvider(create: (context)=>NewsBookCubit(getIt.get<HomeRepoImp>() )..newsBook())
     ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: primaryColor),
      ),
    );
  }
}
