import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import 'ListViewBastSellerItem.dart';
 import 'custom_BestSellerBookListView.dart';
import 'custom-app-bar.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              CustomAppBar(),
              BookListView(),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Best Seller",
                  style: Styles.textStyle18,
                ),
              ),

            ],
          ),
        ),
        const SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: ListViewBastSellerItem(),
          ),
        )
      ]),
    );
  }
}
