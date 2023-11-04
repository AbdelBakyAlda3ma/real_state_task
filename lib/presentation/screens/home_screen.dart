import 'package:flutter/material.dart';
import 'package:real_state_task/core/widgets/custom_bottom_nav_bar.dart';
import 'package:real_state_task/presentation/widgets/home_Screen_body.dart';
import 'package:real_state_task/presentation/widgets/home_screen_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: HomeScreenAppBar(),
      body: HomeScreenBody(),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}
