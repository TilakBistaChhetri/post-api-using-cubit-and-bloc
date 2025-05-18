// domain/repositories/auth_repository.dart
import '../entities/login_entity.dart';

abstract class AuthRepository {
  Future<LoginEntity> login(String email, String password);
}
