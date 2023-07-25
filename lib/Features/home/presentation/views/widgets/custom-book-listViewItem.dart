import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BookListViewItem extends StatelessWidget {
    BookListViewItem({
    Key? key,
    required this.img
  }) : super(key: key);
String img;
  @override
  Widget build(BuildContext context) {
    return  ClipRRect(
      borderRadius: BorderRadius.circular(10),
      
      child: AspectRatio(

        aspectRatio: 2.7 / 4,
        child:  CachedNetworkImage(
          imageUrl:  img,
          fit: BoxFit.fill,
          placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),

      ),
    );

  }
}
