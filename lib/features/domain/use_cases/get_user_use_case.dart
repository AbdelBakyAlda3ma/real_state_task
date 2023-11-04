import 'package:dartz/dartz.dart';
import 'package:real_state_task/core/errors/failure.dart';
import 'package:real_state_task/features/domain/entities/user_entity.dart';
import 'package:real_state_task/features/domain/repo/user_repo.dart';

class GetUserUseCase {
  UserRepo userRepo;
  GetUserUseCase({
    required this.userRepo,
  });
  Future<Either<Failure, List<UserEntity>>> call() async {
    return await userRepo.getUsers();
  }
}
