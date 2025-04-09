import 'package:bookly_app/features/home/presentation/screens/widgets/books_details_section.dart';
import 'package:bookly_app/features/home/presentation/screens/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/features/home/presentation/screens/widgets/similer_books_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookDetailsScreenBody extends StatelessWidget {
  const BookDetailsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                CustomBookDetailsAppBar(),
                BookDetailsSection(),
                const Expanded(child: SizedBox(height: 50)),
                const SimilerBooksSection(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
