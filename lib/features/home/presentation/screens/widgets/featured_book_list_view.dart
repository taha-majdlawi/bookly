import 'package:bookly_app/core/widgets/circular_progress_indicator.dart';
import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/features/home/presentation/manager/featuerd_books_cubit/featuerd_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/screens/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBookdListView extends StatelessWidget {
  const FeaturedBookdListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatuerdBooksCubit, FeatuerdBooksState>(
      builder: (context, state) {
        if (state is FeatuerdBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.25,

            child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return CustomBookItem();
              },
            ),
          );
        } else if (state is FeatuerdBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMsg);
        } else {
          return Center(child: const CustomCircularProgressIndicator());
        }
      },
    );
  }
}
