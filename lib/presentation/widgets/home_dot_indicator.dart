// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'package:real_state_task/core/utils/app_colors.dart';

class HomeDotIndicator extends StatelessWidget {
  final int activeIndex;
  final int count;
  const HomeDotIndicator({
    Key? key,
    required this.activeIndex,
    required this.count,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSmoothIndicator(
      duration: const Duration(milliseconds: 700),
      activeIndex: activeIndex, // PageController
      count: count,
      effect: const ExpandingDotsEffect(
        spacing: 4,
        dotColor: AppColors.achromatic100,
        activeDotColor: AppColors.mainRed,
        dotHeight: 8,
        dotWidth: 8,
      ), // your preferred effect
    );
  }
}
