import 'package:dartz/dartz.dart';
import 'package:template_flutter_provider/app/domain/repositories/user_repository.dart';
import 'package:template_flutter_provider/app/helpers/errors/errors.dart';

abstract class IDeleteUserUsecase {
  Future<Either<Failure, Unit>> delete(int id);
}

class DeleteUserUsecase implements IDeleteUserUsecase {
  final UserRepository repository;

  DeleteUserUsecase({required this.repository});

  @override
  Future<Either<Failure, Unit>> delete(int id) async {
    return await repository.delete(id);
  }
}
