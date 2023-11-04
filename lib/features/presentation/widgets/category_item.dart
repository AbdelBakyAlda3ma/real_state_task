import 'package:flutter/material.dart';
import 'package:real_state_task/core/category_item_model.dart';
import 'package:real_state_task/core/utils/app_colors.dart';
import 'package:real_state_task/core/utils/custom_icons.dart';
import 'package:real_state_task/core/widgets/horizontal_space.dart';

class CategoryItem extends StatelessWidget {
  final CategoryItemModel category;

  const CategoryItem({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.pureWhite,
      borderRadius: BorderRadius.circular(8),
      elevation: 0.3,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          children: [
            Icon(
              category.icon,
              color: AppColors.mainRed,
            ),
            const HorizontalSpace(space: 12),
            Text(
              category.name,
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16,
              ),
            ),
            const Spacer(),
            const Icon(
              CustomIcons.right_arrow,
              color: AppColors.achromatic400,
            ),
          ],
        ),
      ),
    );
  }
}
