import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../home/presentation/similer_books_cubit/similar_books_cubit.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (inp){
        BlocProvider.of<SimilarBooksCubit>(context).fetchSimilarBooks(
            category:  inp,
        );
      },
        decoration: InputDecoration(
      hintText: "Search",
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.white),
        borderRadius: BorderRadius.circular(12),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.white),
        borderRadius: BorderRadius.circular(12),
      ),
      suffixIcon: IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
    ));
  }
}
