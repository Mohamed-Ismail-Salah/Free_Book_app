import 'package:book_app/Features/home/presentation/view_models/features_book_cubit/features_book_cubit.dart';
import 'package:book_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'custom-book-listViewItem.dart';

class BookListView extends StatelessWidget {
  const BookListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<FeaturesBookCubit,FeaturesBookState>(
      builder: (context,state) {
        if(state is FeaturesBookSuccess){

          return  SizedBox(
          height: MediaQuery
              .of(context)
              .size
              .height * .3,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: state.book.length,
            itemBuilder: (context, index) {
               return   Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: GestureDetector(
                    onTap: (){
                      GoRouter.of(context).push( AppRouter.kBookDetailsView,extra: state.book[index]);
                    },
                    child: BookListViewItem(img: state.book[index].volumeInfo?.imageLinks?.smallThumbnail??"",)),
              );
            },
          ),
        );}else if(state is FeaturesBookFailure){
          return Text(state.errMessage);
        }else{
          return const Center(child:   CircularProgressIndicator());
        }
      });
  }
  }

