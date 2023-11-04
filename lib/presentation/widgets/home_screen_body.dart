import 'package:flutter/material.dart';
import 'package:real_state_task/core/widgets/vertical_space.dart';
import 'package:real_state_task/presentation/widgets/announcement_section.dart';
import 'package:real_state_task/presentation/widgets/greating_row.dart';
import 'package:real_state_task/presentation/widgets/home_animation_section.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          VerticalSpace(space: 12),
          GreatingRow(),
          VerticalSpace(space: 16),
          AnnouncementSection(),
          VerticalSpace(space: 16),
          HomeAnimationSection(),
        ],
      ),
    );
  }
}
