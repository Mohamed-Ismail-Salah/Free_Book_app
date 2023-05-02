import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import 'costom-bast-seller-Item.dart';
import 'custom_BestSellerBookListView.dart';
 import 'custom-app-bar.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child:  CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            CustomAppBar(),
            BookListView(),
             Text(
              "Best Seller",
              style: Styles.textStyle18,
            ),

            SizedBox(
              height: 20,
            ),


          ],
        ),
      ),
            const SliverFillRemaining(
              child:  ListViewBastSellerIte(),
            )

]

    ),
    ),
    );
  }
}

class ListViewBastSellerIte extends StatelessWidget {
  const ListViewBastSellerIte({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(

      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder:(context,index)
      {return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: BastSellerItem());
  }) ;
  }
}




