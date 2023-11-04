import 'package:flutter/material.dart';

class ShimmerSkeletonComponent extends StatelessWidget {
  final double height;
  final double width;
  final double borderRadius;
  const ShimmerSkeletonComponent({
    super.key,
    required this.height,
    required this.width,
    this.borderRadius = 32,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      height: height,
      width: width,
    );
  }
}
