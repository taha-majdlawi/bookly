import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/book_modle/book_modle.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:meta/meta.dart';

part 'simillar_book_state.dart';

class SimillarBookCubit extends Cubit<SimillarBookState> {
  SimillarBookCubit(this.homeRepo) : super(SimillarBookInitial());
  final HomeRepo homeRepo;

  Future<void> fetchSimilarBooks({required String category}) async {
    emit(SimillarBookLoading());

    var result = await homeRepo.fetchSimilarBooks(category: category);
    result.fold(
      (failure) => emit(SimillarBookFailure(failure.errMsg)),
      (books) => emit(SimillarBookSuccess(books)),
    );
  }
}
