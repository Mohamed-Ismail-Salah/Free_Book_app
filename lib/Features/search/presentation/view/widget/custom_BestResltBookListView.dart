import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../home/presentation/similer_books_cubit/similar_books_cubit.dart';
import '../../../../home/presentation/views/widgets/custom-book-Rating.dart';

class SearchResultBookListView extends StatelessWidget {
  const SearchResultBookListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<SimilarBooksCubit,SimilarBooksState>(
        builder: (BuildContext context, state) {
      if(state is SimilarBooksSuccess) {
        return ListView.builder(
            itemCount: state.book.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  GoRouter.of(context).push(AppRouter.kBookDetailsView,extra: state.book[index]);
                },
                child: SizedBox(
                  height: 100,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      children: [
                        AspectRatio(
                          aspectRatio: 2.7 / 4,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.blue,
                                image:   DecorationImage(
                                    fit: BoxFit.fill,
                                    image: NetworkImage(
                                        state.book[index].volumeInfo?.imageLinks?.smallThumbnail??""))),
                          ),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: MediaQuery
                                  .of(context)
                                  .size
                                  .width * .5,
                              child:   Text(
                              state.book[index].volumeInfo?.title??"",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: Styles.textStyle18,
                              ),
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                              Text(
                              state.book[index].volumeInfo!.authors?[0]??"no found authors",
                              style: Styles.textStyle14,
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              );
            });
      }else if(state is SimilarBooksFailure ){
        return   Center(child: Text(state.errMessage));
      }else if (state is SimilarBooksLoading){
        return const Center(child: CircularProgressIndicator());
      }else{
        return Container();
      }
        }
    );
  }

}
