import 'package:flutter/material.dart';
import 'package:real_state_task/core/utils/app_colors.dart';

class CustomToggleButtonChild extends StatelessWidget {
  final String text;
  final bool isSelected;
  const CustomToggleButtonChild({
    super.key,
    required this.text,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 600),
      curve: Curves.easeInOut,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
      decoration: BoxDecoration(
        /// change the backgroud color if is selected
        color: isSelected ? AppColors.mainRed : AppColors.bgColor,
        borderRadius: BorderRadius.circular(100),
      ),
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 14,
            color: isSelected ? AppColors.achromatic50 : AppColors.darkBlack,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
