import 'package:flutter/material.dart';
import 'package:real_state_task/core/widgets/vertical_space.dart';
import 'package:real_state_task/features/presentation/widgets/user_item_shimmer.dart';
import 'package:shimmer/shimmer.dart';

class UserShimmerLoading extends StatelessWidget {
  const UserShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Shimmer.fromColors(
        baseColor: Colors.grey[500]!.withOpacity(0.2),
        highlightColor: Colors.grey[200]!,
        child: ListView.separated(
          itemBuilder: (context, index) => const UserItemShimmer(),
          separatorBuilder: (context, index) => const VerticalSpace(space: 16),
          itemCount: 5,
        ),
      ),
    );
  }
}
