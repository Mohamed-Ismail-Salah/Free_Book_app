
import 'package:flutter/material.dart';

import 'Custom_Search_TextField.dart';

class SearchBody extends StatelessWidget{
  const SearchBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Column(
        children:const [
          CustomSearchTextField()
        ],
      ),
    );
  }

}

