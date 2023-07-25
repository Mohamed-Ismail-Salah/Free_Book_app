import 'package:book_app/Features/home/data/models/book_modle/book_modle.dart';
import 'package:flutter/material.dart';
import 'BookDetailsSection.dart';
import 'SimilarBooksSection.dart';
import 'costom-app-bar-book-details.dart';
import 'custom_BookAction.dart';

class BookDetailsBody extends StatelessWidget {
  const  BookDetailsBody({super.key, required this.bookModel});
final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var wight = MediaQuery.of(context).size.width;
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  const AppBarBookDetails(),
                  BookDetailsSection(wight: wight, bookModel:  bookModel,),
                  const SizedBox(
                    height: 30,
                  ),
                    BookAction(book:  bookModel,

                  ),
                  const Expanded(
                      child: SizedBox(
                    height: 30,
                  )),
                  const SimilarBooksSection(),
                ],
              ),
            )
          ],
        ));
  }
}
