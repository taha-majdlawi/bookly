import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/screens/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/presentation/screens/widgets/custom_list_view_item.dart';
import 'package:bookly_app/features/home/presentation/screens/widgets/featured_book_list_view.dart';
import 'package:flutter/material.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 14.0, top: 18, bottom: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(),
          FeaturedBookdListView(),
          SizedBox(height: 50),
          Text('Best Seller', style: Styles.textStyle18),
        ],
      ),
    );
  }
}
