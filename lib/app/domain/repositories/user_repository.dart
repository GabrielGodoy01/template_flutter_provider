import 'package:dartz/dartz.dart';
import 'package:template_flutter_provider/app/domain/entities/user_entity.dart';
import 'package:template_flutter_provider/app/helpers/errors/errors.dart';

abstract class UserRepository {
  Future<Either<Failure, List<UserEntity>>> getAll();

  Future<Either<Failure, UserEntity>> insert(UserEntity model);

  Future<Either<Failure, UserEntity>> update(UserEntity model);

  Future<Either<Failure, Unit>> delete(int id);
}
