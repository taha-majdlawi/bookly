part of 'featuerd_books_cubit.dart';

@immutable
sealed class FeatuerdBooksState {}

final class FeatuerdBooksInitial extends FeatuerdBooksState {}

final class FeatuerdBooksLoading extends FeatuerdBooksState {}

class FeatuerdBooksSuccess extends FeatuerdBooksState {
  final List<BookModle> books;

  FeatuerdBooksSuccess(this.books);
}

final class FeatuerdBooksFailure extends FeatuerdBooksState {
  final String errMsg;

  FeatuerdBooksFailure(this.errMsg);
}
