import 'package:book_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Row(
      children: [
              Text("BOOK FOR FREE",style: Styles.textStyle20.copyWith( fontFamily: logoFont ),),
        const Spacer(),
        IconButton(onPressed:(){
          GoRouter.of(context).push(AppRouter.kBookSearchView);
        }, icon: const Icon( Icons.search))
      ],
    );
  }
}