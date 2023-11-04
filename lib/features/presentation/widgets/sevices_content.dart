import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:real_state_task/core/utils/app_colors.dart';
import 'package:real_state_task/core/utils/app_images.dart';
import 'package:real_state_task/core/widgets/vertical_space.dart';

class ServicesContet extends StatelessWidget {
  const ServicesContet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            AppImages.emptyState,
          ),
          const VerticalSpace(space: 8),
          const Text(
            'No services found',
            style: TextStyle(
              fontSize: 22,
              color: AppColors.achromatic800,
              fontWeight: FontWeight.w800,
            ),
          ),
          const Text(
            'you can place your needed orders to let serve you.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              color: AppColors.achromatic500,
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),
    );
  }
}
