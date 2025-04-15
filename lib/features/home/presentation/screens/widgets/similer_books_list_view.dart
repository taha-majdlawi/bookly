import 'package:bookly_app/core/widgets/circular_progress_indicator.dart';
import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/features/home/presentation/manager/simillar_books_cubit/simillar_book_cubit.dart';
import 'package:bookly_app/features/home/presentation/screens/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimilerBooksListView extends StatelessWidget {
  const SimilerBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimillarBookCubit, SimillarBookState>(
      builder: (context, state) {
        if (state is SimillarBookSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,

            child: ListView.builder(
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 3.0),
                  child: CustomBookItem(
                    imageUrl:
                        state.books[index].volumeInfo!.imageLinks!.thumbnail ??
                        '',
                  ),
                );
              },
            ),
          );
        } else if (state is SimillarBookFailure) {
          return CustomErrorWidget(errMessage: state.errMsg);
        } else {
          return const Center(child: CustomCircularProgressIndicator());
        }
      },
    );
  }
}
