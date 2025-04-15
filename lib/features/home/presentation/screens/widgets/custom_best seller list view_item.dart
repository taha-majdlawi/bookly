import 'dart:ui';

import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/models/book_modle/book_modle.dart';
import 'package:bookly_app/features/home/presentation/screens/widgets/book_rating.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.book});
  final BookModle book;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kDetailsView, extra: book);
      },

      child: Row(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.13,
            width: MediaQuery.of(context).size.width * 0.2,
            child: AspectRatio(
              aspectRatio: 2.5 / 4,
              child: CachedNetworkImage(
                imageUrl: book.volumeInfo!.imageLinks?.thumbnail ?? '',
                fit: BoxFit.fill,
                placeholder:
                    (context, url) =>
                        Center(child: CircularProgressIndicator()),
                errorWidget:
                    (context, url, error) => Icon(Icons.error, size: 35),
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
                    book.volumeInfo!.title.toString(),
                    style: Styles.textStyle16,
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,

                 getFirstAuthorName(book) ?? 'Unknown',
                  style: Styles.textStyle14.copyWith(color: Colors.grey),
                ),
                const SizedBox(height: 3),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Free',
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

  getFirstAuthorName(BookModle book) {
    try {
      if (book.volumeInfo == null) {
        return null;
      } else if (book.volumeInfo!.authors == null) {
        return null;
      }
      else{
        return book.volumeInfo!.authors![0];
      }
    } on Exception catch (e) {
      return null;
    }
  }
}
