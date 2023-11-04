import 'package:flutter/material.dart';
import 'package:real_state_task/core/utils/app_colors.dart';

class CategoryContentHeader extends StatelessWidget {
  const CategoryContentHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Categories View',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 14,
          ),
        ),
        Text(
          'see all',
          style: TextStyle(
            decoration: TextDecoration.underline,
            fontWeight: FontWeight.w300,
            fontSize: 14,
            color: AppColors.achromatic400,
          ),
        ),
      ],
    );
  }
}
