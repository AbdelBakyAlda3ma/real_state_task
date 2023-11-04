import 'package:flutter/material.dart';
import 'package:real_state_task/core/utils/app_colors.dart';

class HomeScreenAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeScreenAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.pureWhite,
      leading: const Icon(
        Icons.menu,
        size: 24,
      ),
      centerTitle: true,
      title: const Text(
        'Home',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: AppColors.darkBlack,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
