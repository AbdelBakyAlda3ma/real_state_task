import 'package:get_it/get_it.dart';
import 'package:real_state_task/core/api_services.dart';
import 'package:real_state_task/features/data/data_sources/user_remote_data_source.dart';
import 'package:real_state_task/features/data/repo/user_repo_impl.dart';
import 'package:real_state_task/features/domain/use_cases/get_user_use_case.dart';
import 'package:real_state_task/features/presentation/get_users_bloc/get_users_bloc.dart';

final sL = GetIt.instance;

void setUpServiceLocator() {
  sL.registerSingleton<ApiService>(ApiService());
  sL.registerSingleton<UserRemoteDataSourceImpl>(
      UserRemoteDataSourceImpl(apiService: sL.get<ApiService>()));
  sL.registerSingleton<UserRepoImpl>(
    UserRepoImpl(
      userRemoteDataSource: sL.get<UserRemoteDataSourceImpl>(),
    ),
  );
  sL.registerFactory<GetUsersBloc>(
    () => GetUsersBloc(
      getUserUseCase: GetUserUseCase(
        userRepo: sL.get<UserRepoImpl>(),
      ),
    ),
  );
}
