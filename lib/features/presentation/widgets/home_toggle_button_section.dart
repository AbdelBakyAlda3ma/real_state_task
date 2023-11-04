import 'package:flutter/material.dart';
import 'package:real_state_task/features/presentation/widgets/home_toggle_button.dart';
import 'package:real_state_task/features/presentation/widgets/home_toggle_content.dart';
import 'package:real_state_task/features/presentation/widgets/order_content.dart';
import 'package:real_state_task/features/presentation/widgets/sevices_content.dart';
import 'package:real_state_task/features/presentation/widgets/users_contet.dart';

import '../../../../core/widgets/vertical_space.dart';

class HomeToggleButtonSection extends StatefulWidget {
  const HomeToggleButtonSection({
    super.key,
  });

  @override
  State<HomeToggleButtonSection> createState() =>
      _HomeToggleButtonSectionState();
}

class _HomeToggleButtonSectionState extends State<HomeToggleButtonSection> {
  List<Widget> toggelContent = [];

  late Widget selectedWidget;
  @override
  void initState() {
    toggelContent = [
      const UsersContent(),
      const ServicesContet(),
      const OrderContent(),
    ];
    selectedWidget = toggelContent[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          const VerticalSpace(space: 8),
          HomeToggleButton(
            onPressed: (index) {
              setState(() {
                selectedWidget = toggelContent[index];
              });
            },
          ),
          const VerticalSpace(space: 16),
          AnimatedContainer(
            key: ValueKey<int>(toggelContent.indexOf(selectedWidget)),
            duration: const Duration(milliseconds: 900),
            child: HomeToggleContent(
              content: selectedWidget,
            ),
          ),
        ],
      ),
    );
  }
}
