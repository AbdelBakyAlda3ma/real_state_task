import 'package:flutter/material.dart';
import 'package:real_state_task/core/utils/app_colors.dart';
import 'package:real_state_task/presentation/screens/home_screen.dart';

void main() {
  runApp(const RealStateTask());
}

class RealStateTask extends StatelessWidget {
  const RealStateTask({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'OutfitFont',
        scaffoldBackgroundColor: AppColors.bgColor,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          primary: AppColors.darkBlack,
        ),
        // useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
