import 'package:book_app/Features/home/data/models/book_modle/book_modle.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/styles.dart';
import 'custom-book-Rating.dart';
import 'custom-book-listViewItem.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({
    super.key,
    required this.wight,
    required this.bookModel,
  });

  final double wight;
final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: EdgeInsets.symmetric(horizontal: wight * .25),
            child:   BookListViewItem(
                img:bookModel.volumeInfo?.imageLinks?.smallThumbnail??"")),
        const SizedBox(
          height: 20,
        ),
          Text(
          bookModel.volumeInfo?.title??"",
          style: Styles.textStyle30,
            textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 6,
        ),
          Opacity(
            opacity: .7,
            child: Text(
              bookModel.volumeInfo?.authors?[0]??"no found authors",
              style: Styles.textStyle18,
            )),
        const SizedBox(
          height: 15,
        ),
           
      ],
    );
  }
}
