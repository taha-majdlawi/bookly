import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/book_modle/book_modle.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:meta/meta.dart';

part 'newset_books_state.dart';

class NewsetBooksCubit extends Cubit<NewsetBooksState> {
  NewsetBooksCubit(this.homeRepo) : super(NewsetBooksInitial());
  final HomeRepo homeRepo;

  Future<void> fetchNewestBooks() async {
    emit(NewsetBooksLoading());

    var result = await homeRepo.fetchNewestBooks();
    result.fold(
      (failure) => emit(NewsetBooksFailure(failure.errMsg)),
      (books) => emit(NewsetBooksSuccess(books)),
    );
  }
}
