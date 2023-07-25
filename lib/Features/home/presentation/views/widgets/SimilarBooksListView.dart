import 'package:book_app/Features/home/presentation/similer_books_cubit/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom-book-listViewItem.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<SimilarBooksCubit,SimilarBooksState>(
      builder: (BuildContext context, state) {
        if(state is SimilarBooksSuccess){
          return SizedBox(
            height: MediaQuery
                .of(context)
                .size
                .height * .15,
            child: ListView.builder(
              itemCount: state.book.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: BookListViewItem(
                    img: state.book[index].volumeInfo?.imageLinks?.smallThumbnail??"",),
                );
              },
            ),
          );
        }else if(state is SimilarBooksFailure ){
          return   Center(child: Text(state.errMessage));
        }else{
          return const Center(child: CircularProgressIndicator());
        }
      }
      );
  }

}
