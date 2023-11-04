import 'package:flutter/material.dart';
import 'package:real_state_task/core/widgets/vertical_space.dart';
import 'package:real_state_task/features/domain/entities/user_entity.dart';
import 'package:real_state_task/features/presentation/widgets/user_item.dart';

class UsersListView extends StatelessWidget {
  final List<UserEntity> user;
  const UsersListView({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        padding: const EdgeInsets.only(bottom: 20),
        itemBuilder: (context, index) => UserItem(
          user: user[index],
        ),
        separatorBuilder: ((context, index) => const VerticalSpace(space: 16)),
        itemCount: user.length,
      ),
    );
  }
}
