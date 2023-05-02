import 'package:flutter/material.dart';

import 'custom-book-listViewItem.dart';

class BestSellerBookListView extends StatelessWidget {
  const BestSellerBookListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index){return const BookListViewItem();} ,
      ),
    );
  }
}
