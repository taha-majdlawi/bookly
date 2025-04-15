import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/book_modle/book_modle.dart';
import 'package:meta/meta.dart';

part 'simillar_book_state.dart';

class SimillarBookCubit extends Cubit<SimillarBookState> {
  SimillarBookCubit() : super(SimillarBookInitial());
}
