// // domain/usecases/login_usecase.dart
// import '../entities/login_entity.dart';
// import '../repositories/login_repository.dart';

// class LoginUseCase {
//   final AuthRepository repository;

//   LoginUseCase(this.repository);

//   Future<LoginEntity> execute(String email, String password) {
//     return repository.login(email, password);
//   }
// }




import '../../data/models/login_model.dart';
import '../repositories/login_repository.dart';

class LoginUseCase {
  final AuthRepository repository;

  LoginUseCase(this.repository);

  Future<String> execute(LoginModel loginModel) {
    return repository.login(loginModel);
  }
}
