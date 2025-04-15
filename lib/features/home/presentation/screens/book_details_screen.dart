import 'package:bookly_app/features/home/data/models/book_modle/book_modle.dart';
import 'package:bookly_app/features/home/presentation/manager/simillar_books_cubit/simillar_book_cubit.dart';
import 'package:bookly_app/features/home/presentation/screens/widgets/book_details_screen_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsScreen extends StatefulWidget {
  const BookDetailsScreen({super.key, required this.book});
  final BookModle book;

  @override
  State<BookDetailsScreen> createState() => _BookDetailsScreenState();
}

class _BookDetailsScreenState extends State<BookDetailsScreen> {
  void initState() {
    super.initState();
    BlocProvider.of<SimillarBookCubit>(
      context,
    ).fetchSimilarBooks(category: widget.book.volumeInfo!.categories![0]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: BookDetailsScreenBody(book: widget.book)),
    );
  }
}
