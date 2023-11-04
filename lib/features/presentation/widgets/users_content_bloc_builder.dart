import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:real_state_task/features/presentation/get_users_bloc/get_users_bloc.dart';
import 'package:real_state_task/features/presentation/widgets/user_shimmer_loading.dart';
import 'package:real_state_task/features/presentation/widgets/users_list_view.dart';

class UsersContentBlocBuilder extends StatelessWidget {
  const UsersContentBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetUsersBloc, GetUsersState>(
      builder: (context, state) {
        if (state is GetUsersSuccess) {
          return UsersListView(
            user: state.users,
          );
        } else if (state is GetUsersFailure) {
          return Center(
            child: Text(
              state.errMsg,
              textAlign: TextAlign.center,
            ),
          );
        } else {
          return const UserShimmerLoading();
        }
      },
    );
  }
}
