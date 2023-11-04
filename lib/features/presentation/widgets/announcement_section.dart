import 'package:flutter/material.dart';
import 'package:real_state_task/core/constances.dart';
import 'package:real_state_task/core/utils/app_colors.dart';
import 'package:real_state_task/core/widgets/vertical_space.dart';

class AnnouncementSection extends StatelessWidget {
  const AnnouncementSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          announcementHead,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
        VerticalSpace(space: 4),
        Text(
          announcementContent,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: AppColors.achromatic500,
          ),
        ),
      ],
    );
  }
}
