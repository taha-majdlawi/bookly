import 'package:bookly_app/features/search/presentation/screens/widgets/custom_search_text_field.dart';
import 'package:flutter/material.dart';

class SearchScreenBody extends StatelessWidget {
  const SearchScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(children: [CustomSearchTextField()]),
    );
  }
}
