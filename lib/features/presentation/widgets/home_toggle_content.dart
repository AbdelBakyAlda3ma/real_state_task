import 'package:flutter/material.dart';

class HomeToggleContent extends StatelessWidget {
  final Widget content;
  const HomeToggleContent({
    super.key,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: content,
    );
  }
}
