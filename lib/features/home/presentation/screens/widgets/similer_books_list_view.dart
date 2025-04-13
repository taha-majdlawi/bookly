import 'package:bookly_app/features/home/presentation/screens/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

class SimilerBooksListView extends StatelessWidget {
  const SimilerBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,

      child: ListView.builder(
        itemCount: 500,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3.0),
            child: CustomBookItem(
              imageUrl:
                  'https://media.istockphoto.com/id/1401387054/vector/vector-cosmic-illustration-beautiful-colorful-space-background-watercolor-cosmos.jpg?s=612x612&w=0&k=20&c=SaEzaOn8GJfpsw8Of0pn210gj26yEkbkXFBbGfUkJgE=',
            ),
          );
        },
      ),
    );
  }
}
