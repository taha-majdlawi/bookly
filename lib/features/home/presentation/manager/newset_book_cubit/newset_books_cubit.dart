import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/book_modle/book_modle.dart';
import 'package:meta/meta.dart';

part 'newset_books_state.dart';

class NewsetBooksCubit extends Cubit<NewsetBooksState> {
  NewsetBooksCubit() : super(NewsetBooksInitial());
}
