part of 'simillar_book_cubit.dart';

@immutable
sealed class SimillarBookState {}

final class SimillarBookInitial extends SimillarBookState {}

final class SimillarBookLoading extends SimillarBookState {}

final class SimillarBookSuccess extends SimillarBookState {
  final List<BookModle> books;

  SimillarBookSuccess(this.books);
}

final class SimillarBookFailure extends SimillarBookState {
  final String errMsg;

  SimillarBookFailure(this.errMsg);
}
