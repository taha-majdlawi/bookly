import 'dart:io';

import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/screens/widgets/best_seller_list_view.dart';
import 'package:bookly_app/features/home/presentation/screens/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/presentation/screens/widgets/custom_best%20seller%20list%20view_item.dart';
import 'package:bookly_app/features/home/presentation/screens/widgets/custom_book_item.dart';
import 'package:bookly_app/features/home/presentation/screens/widgets/featured_book_list_view.dart';
import 'package:flutter/material.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 24, top: 12, bottom: 0),
                child: const CustomAppBar(),
              ),
              FeaturedBookdListView(),
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.only(left: 28, top: 0, bottom: 0),
                child: Text('Newest books', style: Styles.textStyle18),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: BestSellerListView(),
          ),
        ),
      ],
    );
  }
}
