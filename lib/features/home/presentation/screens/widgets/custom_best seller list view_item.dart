import 'dart:ui';

import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/screens/widgets/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kDetailsView);
      },

      child: Row(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.13,
            width: MediaQuery.of(context).size.width * 0.2,
            child: AspectRatio(
              aspectRatio: 2.5 / 4,
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AssetsData.testImage),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: 30),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Text(
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    'Harry Porter and the Goblet of Fire',
                    style: Styles.textStyle16,
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  'K. Rowling',
                  style: Styles.textStyle14.copyWith(color: Colors.grey),
                ),
                const SizedBox(height: 3),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '19.99 \$',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    BookRating(count: 245, rating: 4.8),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
