import 'package:flutter/material.dart';
import 'package:real_state_task/core/utils/app_colors.dart';
import 'package:real_state_task/core/utils/custom_icons.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: AppColors.mainRed,
      unselectedItemColor: AppColors.achromatic200,
      unselectedIconTheme: const IconThemeData(),
      showSelectedLabels: true,
      showUnselectedLabels: true,
      selectedFontSize: 15,
      unselectedFontSize: 15,
      elevation: 50,
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(CustomIcons.home),
          label: 'Home',
          activeIcon: Icon(CustomIcons.home),
        ),
        BottomNavigationBarItem(
          icon: Icon(CustomIcons.assets),
          label: 'Assets',
          activeIcon: Icon(CustomIcons.assets),
        ),
        BottomNavigationBarItem(
          icon: Icon(CustomIcons.support_agent),
          label: 'Support',
          activeIcon: Icon(CustomIcons.support_agent),
        ),
        BottomNavigationBarItem(
          icon: Icon(CustomIcons.profile),
          label: 'Profile',
          activeIcon: Icon(CustomIcons.profile),
        ),
      ],
    );
  }
}
