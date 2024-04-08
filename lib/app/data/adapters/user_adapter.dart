import 'package:template_flutter_provider/app/domain/entities/user_entity.dart';

class UserAdapter {
  static Map<String, dynamic> toMap(UserEntity user) {
    return {
      'id': user.id,
      'name': user.name,
      'isActive': user.isActive,
    };
  }

  static UserEntity fromMap(Map<String, dynamic> map) {
    return UserEntity(
      id: map['id'],
      name: map['title'],
      isActive: map['check'],
    );
  }
}
