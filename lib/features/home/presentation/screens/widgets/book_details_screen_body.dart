import 'package:bookly_app/core/utils/styles.dart';

import 'package:bookly_app/features/home/presentation/screens/widgets/book_action.dart';
import 'package:bookly_app/features/home/presentation/screens/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/screens/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/features/home/presentation/screens/widgets/custom_book_item.dart';
import 'package:bookly_app/features/home/presentation/screens/widgets/similer_books_list_view.dart';
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
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.17),
                  child: CustomBookItem(),
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
                const Expanded(child: SizedBox(height: 50)),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'You can also like',
                    style: Styles.textStyle16.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                const SimilerBooksListView(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
