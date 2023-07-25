import 'package:flutter/material.dart';

import 'custom-book-listViewItem.dart';

class BestSellerBookListView extends StatelessWidget {
  const BestSellerBookListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return   BookListViewItem(
            img: "https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"


          );
        },
      ),
    );
  }
}
