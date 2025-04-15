import 'package:bookly_app/features/home/data/models/book_modle/book_modle.dart';
import 'package:bookly_app/features/home/presentation/screens/widgets/books_details_section.dart';
import 'package:bookly_app/features/home/presentation/screens/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/features/home/presentation/screens/widgets/similer_books_section.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookDetailsScreenBody extends StatelessWidget {
  const BookDetailsScreenBody({super.key, required this.book});
  final BookModle book;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: CustomBookDetailsAppBar(),
              ),
              Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: BookDetailsSection(book : book),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: const Expanded(child: SizedBox(height: 50)),
              ),
              const SimilerBooksSection(),
            ],
          ),
        ),
      ],
    );
  }
}
