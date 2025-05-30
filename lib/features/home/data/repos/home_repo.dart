import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/features/home/data/models/book_modle/book_modle.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failures, List<BookModle>>> fetchNewestBooks();
  Future<Either<Failures, List<BookModle>>> fetchFeaturedBooks();
  Future<Either<Failures, List<BookModle>>> fetchSimilarBooks({
    required String category,
  });
}
