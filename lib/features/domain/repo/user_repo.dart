import 'package:dartz/dartz.dart';
import 'package:real_state_task/core/errors/failure.dart';
import 'package:real_state_task/features/domain/entities/user_entity.dart';

abstract class UserRepo {
  Future<Either<Failure, List<UserEntity>>> getUsers();
}
