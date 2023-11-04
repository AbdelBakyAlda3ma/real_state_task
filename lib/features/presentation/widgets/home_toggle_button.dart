import 'package:flutter/material.dart';
import 'package:real_state_task/core/widgets/custom_toggle_button.dart';
import 'package:real_state_task/core/widgets/custom_toggle_button_child.dart';

class HomeToggleButton extends StatefulWidget {
  const HomeToggleButton({
    super.key,
    required this.onPressed,
  });
  final void Function(int) onPressed;
  @override
  State<HomeToggleButton> createState() => _HomeToggleButtonState();
}

class _HomeToggleButtonState extends State<HomeToggleButton> {
  List<bool> isSelected = [true, false, false];
  @override
  Widget build(BuildContext context) {
    return CustomToggleButton(
      isSelected: isSelected,
      onPressed: (index) {
        setState(() {
          for (var i = 0; i < isSelected.length; i++) {
            if (i == index) {
              isSelected[i] = true;
              widget.onPressed(index);
            } else {
              isSelected[i] = false;
            }
          }
        });
      },
      children: [
        CustomToggleButtonChild(
          text: 'Categories',
          isSelected: isSelected[0],
        ),
        CustomToggleButtonChild(
          text: 'Services',
          isSelected: isSelected[1],
        ),
        CustomToggleButtonChild(
          text: 'Oreders',
          isSelected: isSelected[2],
        ),
      ],
    );
  }
}
