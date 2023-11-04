import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:real_state_task/features/domain/entities/user_entity.dart';
import 'package:real_state_task/features/domain/use_cases/get_user_use_case.dart';

part 'get_users_event.dart';
part 'get_users_state.dart';

class GetUsersBloc extends Bloc<GetUsersEvent, GetUsersState> {
  GetUserUseCase getUserUseCase;

  GetUsersBloc({
    required this.getUserUseCase,
  }) : super(GetUsersInitial()) {
    on<GetUsersEvent>(
      (event, emit) async {
        emit(GetUsersLoading());
        var result = await getUserUseCase();
        result.fold(
          (failure) => emit(
            GetUsersFailure(
              errMsg: failure.errorMessage,
            ),
          ),
          (users) => emit(
            GetUsersSuccess(users: users),
          ),
        );
      },
    );
  }
}
