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
              itemCount: 500,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 3.0),
                  child: CustomBookItem(
                    imageUrl:
                        'https://media.istockphoto.com/id/1401387054/vector/vector-cosmic-illustration-beautiful-colorful-space-background-watercolor-cosmos.jpg?s=612x612&w=0&k=20&c=SaEzaOn8GJfpsw8Of0pn210gj26yEkbkXFBbGfUkJgE=',
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
