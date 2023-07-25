import 'package:book_app/Features/home/data/models/book_modle/book_modle.dart';
import 'package:book_app/core/utils/app_router.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/styles.dart';
import 'custom-book-Rating.dart';

class BastSellerItem extends StatelessWidget {
  BastSellerItem({Key? key, required this.bookModel}) : super(key: key);
  BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView,extra: bookModel);
      },
      child: SizedBox(
        height: 100,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: AspectRatio(
                  aspectRatio: 2.7 / 4,
                  child: CachedNetworkImage(
                    imageUrl: bookModel.volumeInfo?.imageLinks?.thumbnail ?? "",
                    fit: BoxFit.fill,
                    placeholder: (context, url) =>
                        const Center(child: CircularProgressIndicator()),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  )),
            ),
            const SizedBox(
              width: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: Text(
                    bookModel.volumeInfo?.title ?? "",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.textStyle18,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  bookModel.volumeInfo?.authors![0],
                  style: Styles.textStyle14.copyWith(
                      color: Colors.white54, fontWeight: FontWeight.w900),
                ),
                const SizedBox(
                  height: 3,
                ),
                Row(
                  children: [
                    Text(
                      "Free",
                      style: Styles.textStyle20
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 50,
                    ),

                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
