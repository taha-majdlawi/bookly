import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/search/presentation/screens/widgets/custom_search_text_field.dart';
import 'package:bookly_app/features/search/presentation/screens/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';

class SearchScreenBody extends StatelessWidget {
  const SearchScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(),
          const SizedBox(height: 16),
          Text('Search Result', style: Styles.textStyle18),
          const SizedBox(height: 22),
          Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}
