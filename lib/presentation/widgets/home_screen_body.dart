import 'package:flutter/material.dart';
import 'package:real_state_task/core/widgets/vertical_space.dart';
import 'package:real_state_task/presentation/widgets/announcement_section.dart';
import 'package:real_state_task/presentation/widgets/greating_row.dart';
import 'package:real_state_task/presentation/widgets/home_animation_section.dart';
import 'package:real_state_task/presentation/widgets/home_toggle_button_section.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          const SliverToBoxAdapter(
            child: Column(
              children: [
                VerticalSpace(space: 12),
                GreatingRow(),
                VerticalSpace(space: 16),
                AnnouncementSection(),
                VerticalSpace(space: 16),
                HomeAnimationSection(),
              ],
            ),
          ),
        ],
        body: const HomeToggleButtonSection(),
      ),
    );
  }
}
