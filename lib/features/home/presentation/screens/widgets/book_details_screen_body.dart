import 'package:bookly_app/features/home/presentation/screens/widgets/custom_book_details_app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookDetailsScreenBody extends StatelessWidget {
  const BookDetailsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(children: [CustomBookDetailsAppBar()]),
    );
  }
}
