part of 'featuerd_books_cubit.dart';

@immutable
sealed class FeatuerdBooksState {}

final class FeatuerdBooksInitial extends FeatuerdBooksState {}

final class FeatuerdBooksLoading extends FeatuerdBooksState {}

 class FeatuerdBooksSuccess extends FeatuerdBooksState {
  final List<BookModle> books;

  FeatuerdBooksSuccess(this.books);
}

final class FeatuerdBookFailure extends FeatuerdBooksState {
  final String errMsg;

  FeatuerdBookFailure(this.errMsg);
}
