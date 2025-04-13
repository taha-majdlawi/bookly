import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/screens/widgets/book_action.dart';
import 'package:bookly_app/features/home/presentation/screens/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/screens/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.17),
          child: CustomBookItem(
            imageUrl: 'https://media.istockphoto.com/id/1401387054/vector/vector-cosmic-illustration-beautiful-colorful-space-background-watercolor-cosmos.jpg?s=612x612&w=0&k=20&c=SaEzaOn8GJfpsw8Of0pn210gj26yEkbkXFBbGfUkJgE=',
          ),
        ),
        const SizedBox(height: 43),
        Text(
          'The Jungle Book',
          style: Styles.textStyle20.copyWith(fontSize: 25),
        ),
        const SizedBox(height: 6),
        Text('Rudyard Kipling', style: Styles.textStyle18),
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
