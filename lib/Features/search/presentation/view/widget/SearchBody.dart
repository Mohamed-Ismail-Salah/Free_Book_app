import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'Custom_Search_TextField.dart';
import 'custom_BestResltBookListView.dart';

class SearchBody extends StatelessWidget {
  const SearchBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomSearchTextField(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Text(
                "Search Result",
                style: Styles.textStyle20.copyWith(fontWeight: FontWeight.w700),
              ),
            ),
            const Expanded(child: SearchResultBookListView())
          ],
        ),
      ),
    );
  }
}
