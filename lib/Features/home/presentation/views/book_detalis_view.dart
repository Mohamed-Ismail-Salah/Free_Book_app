import 'package:book_app/Features/home/presentation/views/widgets/Book_detalis_body.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget{
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: BookDetailsBody()),
    );
  }

}