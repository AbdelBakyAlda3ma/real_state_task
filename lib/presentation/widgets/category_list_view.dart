import 'package:flutter/material.dart';
import 'package:real_state_task/core/category_item_model.dart';
import 'package:real_state_task/core/widgets/vertical_space.dart';
import 'package:real_state_task/presentation/widgets/category_item.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemBuilder: (context, index) => CategoryItem(
          category: listOfCategoryItems[index],
        ),
        separatorBuilder: ((context, index) => const VerticalSpace(space: 16)),
        itemCount: listOfCategoryItems.length,
      ),
    );
  }
}
