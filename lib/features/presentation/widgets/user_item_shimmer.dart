import 'package:flutter/material.dart';
import 'package:real_state_task/core/widgets/shimmer_skeleton_component.dart';

class UserItemShimmer extends StatelessWidget {
  const UserItemShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Material(
          borderRadius: BorderRadius.circular(8),
          elevation: 0.3,
          child: const ShimmerSkeletonComponent(
            height: 40,
            width: 350,
            borderRadius: 4,
          ),
        ),
      ],
    );
  }
}
