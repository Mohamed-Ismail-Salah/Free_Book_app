import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/styles.dart';
import 'custom-book-Rating.dart';
import 'custom-book-listViewItem.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({
    super.key,
    required this.wight,
  });

  final double wight;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: EdgeInsets.symmetric(horizontal: wight * .25),
            child: const BookListViewItem()),
        const SizedBox(
          height: 20,
        ),
        const Text(
          "The Jungle Book",
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 6,
        ),
        const Opacity(
            opacity: .7,
            child: Text(
              "Rudyard Kipling",
              style: Styles.textStyle18,
            )),
        const SizedBox(
          height: 15,
        ),
        const BookRating(),
      ],
    );
  }
}
