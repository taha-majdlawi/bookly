import 'package:bookly_app/features/home/data/models/book_modle/book_modle.dart';
import 'package:bookly_app/features/home/presentation/screens/widgets/book_details_screen_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookDetailsScreen extends StatelessWidget {
  const BookDetailsScreen({super.key, required this.book});
  final BookModle book;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: BookDetailsScreenBody(book: book,)));
  }
}
