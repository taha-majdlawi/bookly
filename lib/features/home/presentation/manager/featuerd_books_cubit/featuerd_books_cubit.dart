import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/book_modle/book_modle.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'featuerd_books_state.dart';

class FeatuerdBooksCubit extends Cubit<FeatuerdBooksState> {
  FeatuerdBooksCubit(this.homeRepo) : super(FeatuerdBooksInitial());
  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(FeatuerdBooksLoading());

    var result = await homeRepo.fetchFeaturedBooks();
    result.fold(
       (failure) => emit(FeatuerdBookFailure(failure.errMsg)),
      (books) => emit(FeatuerdBooksSuccess(books)),
    );
  }
}
