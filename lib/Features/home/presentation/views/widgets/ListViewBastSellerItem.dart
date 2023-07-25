
import 'package:book_app/Features/home/presentation/view_models/news_books_cubit/news_book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'costom-bast-seller-Item.dart';

class ListViewBastSellerItem extends StatelessWidget {
  const ListViewBastSellerItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<NewsBookCubit,NewsBookState>(
       builder:(context,state) {
         if (state is NewsBookSuccess) {
           return ListView.builder(
               physics: const NeverScrollableScrollPhysics(),
               padding: EdgeInsets.zero,
               itemCount:  state.book.length,
               itemBuilder: (context, index) {
                 return   Padding(
                     padding: const EdgeInsets.symmetric(vertical: 10),
                     child: BastSellerItem(bookModel:  state.book[index],
                      ));
               });
         } else if (state is NewsBookFailure){
           return Text(state.errMessage);

         }else{
           return const Center(child: CircularProgressIndicator());
         }
       }
    );
  }
}
