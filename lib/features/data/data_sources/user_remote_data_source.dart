import 'package:real_state_task/core/api_services.dart';
import 'package:real_state_task/features/data/models/user/user.dart';
import 'package:real_state_task/features/domain/entities/user_entity.dart';

abstract class UserRemoteDataSource {
  Future<List<UserEntity>> getUsers();
}

class UserRemoteDataSourceImpl extends UserRemoteDataSource {
  ApiService apiService;
  UserRemoteDataSourceImpl({
    required this.apiService,
  });
  @override
  Future<List<UserEntity>> getUsers() async {
    List<dynamic> usersData = await apiService.get(path: '/users');

    final List<User> usersList = [];
    for (var user in usersData) {
      usersList.add(User.fromMap(user));
    }
    return usersList;
  }
}
