import 'package:dartz/dartz.dart';
import 'package:template_flutter_provider/app/domain/entities/user_entity.dart';
import 'package:template_flutter_provider/app/domain/repositories/user_repository.dart';
import 'package:template_flutter_provider/app/helpers/errors/errors.dart';

abstract class IUpdateUserUsecase {
  Future<Either<Failure, UserEntity>> update(UserEntity user);
}

class UpdateUserUsecase implements IUpdateUserUsecase {
  final UserRepository repository;

  UpdateUserUsecase({required this.repository});

  @override
  Future<Either<Failure, UserEntity>> update(UserEntity user) async {
    return await repository.update(user);
  }
}