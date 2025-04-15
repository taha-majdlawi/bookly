import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/models/book_modle/book_modle.dart';
import 'package:bookly_app/features/home/presentation/screens/widgets/book_action.dart';
import 'package:bookly_app/features/home/presentation/screens/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/screens/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.book});
  final BookModle book;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.17),
          child: CustomBookItem(
            imageUrl: book.volumeInfo!.imageLinks!.thumbnail ?? '',
          ),
        ),
        const SizedBox(height: 43),
        Text(
          book.volumeInfo!.title!,
          maxLines: 2,
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: Styles.textStyle20.copyWith(fontSize: 25),
        ),
        const SizedBox(height: 6),
        Text(book.volumeInfo!.authors![0], style: Styles.textStyle18),
        const BookRating(
          count: 2390,
          rating: 4.8,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(height: 37),
        const BooksAction(),
      ],
    );
  }
}
