import 'package:flutter/material.dart';
import 'package:real_state_task/presentation/widgets/category_content_header.dart';
import 'package:real_state_task/core/widgets/vertical_space.dart';
import 'package:real_state_task/presentation/widgets/category_list_view.dart';

class CategoryContent extends StatelessWidget {
  const CategoryContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CategoryContentHeader(),
        VerticalSpace(space: 16),
        CategoryListView(),
      ],
    );
  }
}
