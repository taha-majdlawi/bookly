import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/features/home/presentation/screens/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/presentation/screens/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [const CustomAppBar(), CustomListViewItem()]);
  }
}
