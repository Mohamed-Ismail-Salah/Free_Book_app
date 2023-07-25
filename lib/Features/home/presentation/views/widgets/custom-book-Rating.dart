import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
    BookRating({
      required this.count,
      required this.rating,
    Key? key,
  }) : super(key: key);
int rating;
int count;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:   [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.yellowAccent,
          size: 17,
        ),
        const SizedBox(
          width: 8,
        ),
        Text(
          "$rating",
          style: Styles.textStyle16,
        ),
        const SizedBox(
          width: 9,
        ),
        Text(
          "($count)",
          style: Styles.textStyle14,
        ),
      ],
    );
  }
}
