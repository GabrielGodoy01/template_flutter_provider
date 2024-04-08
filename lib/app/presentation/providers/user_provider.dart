import 'package:flutter/material.dart';
import 'package:template_flutter_provider/app/domain/entities/user_entity.dart';
import 'package:template_flutter_provider/app/domain/usecases/create_user_usecase.dart';
import 'package:template_flutter_provider/app/domain/usecases/delete_user_usecase.dart';
import 'package:template_flutter_provider/app/domain/usecases/fetch_users_usecase.dart';
import 'package:template_flutter_provider/app/domain/usecases/update_user_usecase.dart';

class UserProvider with ChangeNotifier {
  final ICreateUserUsecase _createUser;
  final IDeleteUserUsecase _deleteUser;
  final IFetchUsersUsecase _fetchUsers;
  final IUpdateUserUsecase _updateUser;

  UserProvider(
    this._createUser,
    this._deleteUser,
    this._fetchUsers,
    this._updateUser,
  );
  // poderia colocar um state aqui para controlar o estado do User
  List<UserEntity> _users = [];

  List<UserEntity> get users => _users;

  Future<void> fetchUsers() async {
    final result = await _fetchUsers.fetchUsers();

    result.fold((l) => null, (r) {
      _users = r;
    });

    notifyListeners();
  }

  Future<void> createUser(UserEntity user) async {
    final result = await _createUser.insert(user);

    result.fold((l) => null, (r) {
      _users.add(r);
    });

    notifyListeners();
  }

  Future<void> updateUser(UserEntity user) async {
    final result = await _updateUser.update(user);

    result.fold((l) => null, (r) {
      final index = _users.indexWhere((element) => element.id == r.id);
      _users[index] = r;
    });

    notifyListeners();
  }

  Future<void> deleteUser(int id) async {
    final result = await _deleteUser.delete(id);

    result.fold((l) => null, (r) {
      _users.removeWhere((element) => element.id == id);
    });

    notifyListeners();
  }
}
