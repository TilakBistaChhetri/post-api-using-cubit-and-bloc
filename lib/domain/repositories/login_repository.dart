// // domain/repositories/auth_repository.dart
// import '../entities/login_entity.dart';

// abstract class AuthRepository {
//   Future<LoginEntity> login(String email, String password);
// }


import '../../data/models/login_model.dart';

abstract class AuthRepository {
  Future<String> login(LoginModel loginModel);
}
