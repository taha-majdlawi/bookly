import 'package:bookly_app/features/home/presentation/screens/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [const CustomAppBar()]);
  }
}

