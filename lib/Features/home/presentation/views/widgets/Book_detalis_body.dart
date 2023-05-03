import 'package:flutter/material.dart';
import 'BookDetailsSection.dart';
import 'SimilarBooksSection.dart';
import 'costom-app-bar-book-details.dart';
import 'custom_BookAction.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

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
                  BookDetailsSection(wight: wight),
                  const SizedBox(
                    height: 30,
                  ),
                  const BookAction(),
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
