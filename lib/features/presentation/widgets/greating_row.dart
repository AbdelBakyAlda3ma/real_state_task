import 'package:flutter/material.dart';
import 'package:real_state_task/core/utils/app_colors.dart';
import 'package:real_state_task/core/utils/app_images.dart';
import 'package:real_state_task/core/widgets/horizontal_space.dart';

class GreatingRow extends StatelessWidget {
  const GreatingRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.lightRed,
          ),
          child: Image.asset(
            AppImages.avatar,
            height: 32,
            width: 32,
          ),
        ),
        const HorizontalSpace(space: 4),
        const Text(
          'Hey, Ahmed',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: AppColors.darkBlack,
          ),
        ),
        const HorizontalSpace(space: 2),
        Image.asset(
          AppImages.hand,
          width: 20,
          height: 20,
        ),
      ],
    );
  }
}
