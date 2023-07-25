import 'package:book_app/Features/home/data/models/book_modle/book_modle.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/widgets/custom_button.dart';

class BookAction extends StatelessWidget {
    const BookAction({
    super.key,
      required this.book,
  });
final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Row(
      children:   [
        Expanded(
            child: CustomButton(
          backgroundColor: Colors.white,
          textColor: Colors.black,
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(8), topLeft: Radius.circular(8)),
          name: "Free", onPressed: () {

            },
        )),
        Expanded(
            child: CustomButton(
          backgroundColor: const Color(0xffEF8262),
          textColor: Colors.white,
          borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(8), topRight: Radius.circular(8)),
          name: 'Free preview', onPressed: () async{
              final Uri url = Uri.parse(book.volumeInfo?.previewLink??"");
              if (!await launchUrl(url)) {
              throw Exception('Could not launch $url');
              }
            },
        )),
      ],
    );
  }
}
