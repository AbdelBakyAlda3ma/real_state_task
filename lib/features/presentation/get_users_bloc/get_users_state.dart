part of 'get_users_bloc.dart';

@immutable
sealed class GetUsersState {}

final class GetUsersInitial extends GetUsersState {}

final class GetUsersLoading extends GetUsersState {}

final class GetUsersSuccess extends GetUsersState {
  final List<UserEntity> users;
  GetUsersSuccess({
    required this.users,
  });
}

final class GetUsersFailure extends GetUsersState {
  final String errMsg;

  GetUsersFailure({required this.errMsg});
}
