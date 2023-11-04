import 'package:flutter/material.dart';
import 'package:real_state_task/presentation/widgets/category_content.dart';
import 'package:real_state_task/presentation/widgets/home_toggle_button.dart';
import 'package:real_state_task/presentation/widgets/home_toggle_content.dart';

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
      const CategoryContent(),
      const CategoryContent(),
      const CategoryContent(),
    ];
    selectedWidget = toggelContent[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          HomeToggleButton(
            onPressed: (index) {
              setState(() {
                selectedWidget = toggelContent[index];
              });
            },
          ),
          const VerticalSpace(space: 16),
          HomeToggleContent(
            content: selectedWidget,
          ),
        ],
      ),
    );
  }
}
