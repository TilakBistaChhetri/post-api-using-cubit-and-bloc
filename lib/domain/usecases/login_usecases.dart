// domain/usecases/login_usecase.dart
import '../entities/login_entity.dart';
import '../repositories/login_repository.dart';

class LoginUseCase {
  final AuthRepository repository;

  LoginUseCase(this.repository);

  Future<LoginEntity> execute(String email, String password) {
    return repository.login(email, password);
  }
}
