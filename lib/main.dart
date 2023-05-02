import 'package:book_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
void main() {
  runApp(const Book());
}

class Book extends StatelessWidget {
  const Book({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return    MaterialApp.router(

        routerConfig:  AppRouter.router,
      debugShowCheckedModeBanner: false,
theme: ThemeData.dark().copyWith(

  scaffoldBackgroundColor:primaryColor
),
    );
  }
}

