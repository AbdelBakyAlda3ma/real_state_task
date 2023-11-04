import 'package:flutter/material.dart';
import 'package:real_state_task/core/widgets/vertical_space.dart';
import 'package:real_state_task/features/presentation/widgets/users_content_bloc_builder.dart';
import 'package:real_state_task/features/presentation/widgets/users_contet_header.dart';

class UsersContent extends StatelessWidget {
  const UsersContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        UsersContentHeader(),
        VerticalSpace(space: 16),
        UsersContentBlocBuilder(),
      ],
    );
  }
}
