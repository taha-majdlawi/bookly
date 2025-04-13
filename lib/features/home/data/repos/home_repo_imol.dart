import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home/data/models/book_modle/book_modle.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failures, List<BookModle>>> fetchNewestBooks() async {
    try {
      var data = await apiService.get(
        endPoint:
            'volumes?q=subject:programming&Filtring=free-ebooks&sorting=newest',
      );

      List<BookModle> books = [];
      for (var item in data['items']) {
        books.add(BookModle.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(errMsg: e.toString()));
    }
  }

  @override
  Future<Either<Failures, List<BookModle>>> fetchFeaturedBooks() async {
    try {
      var data = await apiService.get(
        endPoint: 'volumes?q=subject:programming&Filtring=free-ebooks',
      );

      List<BookModle> books = [];
      for (var item in data['items']) {
        books.add(BookModle.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(errMsg: e.toString()));
    }
  }
}
