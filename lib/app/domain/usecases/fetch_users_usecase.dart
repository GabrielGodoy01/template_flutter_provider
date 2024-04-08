import 'package:dartz/dartz.dart';
import 'package:template_flutter_provider/app/domain/entities/user_entity.dart';
import 'package:template_flutter_provider/app/domain/repositories/user_repository.dart';
import 'package:template_flutter_provider/app/helpers/errors/errors.dart';

abstract class IFetchUsersUsecase {
  Future<Either<Failure, List<UserEntity>>> fetchUsers();
}

class FetchUsersUsecase implements IFetchUsersUsecase {
  final UserRepository repository;

  FetchUsersUsecase({required this.repository});

  @override
  Future<Either<Failure, List<UserEntity>>> fetchUsers() async {
    return await repository.getAll();
  }
}
