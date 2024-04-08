import 'package:dartz/dartz.dart';
import 'package:template_flutter_provider/app/domain/entities/user_entity.dart';
import 'package:template_flutter_provider/app/domain/repositories/user_repository.dart';
import 'package:template_flutter_provider/app/helpers/errors/errors.dart';

abstract class ICreateUserUsecase {
  Future<Either<Failure, UserEntity>> insert(UserEntity user);
}

class CreateUserUsecase implements ICreateUserUsecase {
  final UserRepository repository;

  CreateUserUsecase({required this.repository});

  @override
  Future<Either<Failure, UserEntity>> insert(UserEntity user) async {
    return await repository.insert(user);
  }
}
