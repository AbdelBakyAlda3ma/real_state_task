import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:real_state_task/core/errors/failure.dart';
import 'package:real_state_task/features/data/data_sources/user_remote_data_source.dart';
import 'package:real_state_task/features/domain/entities/user_entity.dart';
import 'package:real_state_task/features/domain/repo/user_repo.dart';

class UserRepoImpl extends UserRepo {
  UserRemoteDataSource userRemoteDataSource;
  UserRepoImpl({
    required this.userRemoteDataSource,
  });
  @override
  Future<Either<Failure, List<UserEntity>>> getUsers() async {
    try {
      var usersList = await userRemoteDataSource.getUsers();
      return Right(usersList);
    } on DioException catch (e) {
      return Left(ServerFailure.fromDio(e));
    }
  }
}
