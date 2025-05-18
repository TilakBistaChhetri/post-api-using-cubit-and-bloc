
// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import '../../domain/entities/login_entity.dart';
// import '../../domain/repositories/login_repository.dart';

// class AuthRepositoryImpl implements AuthRepository {
//   @override
//   Future<LoginEntity> login(String email, String password) async {
//     final response = await http.post(
//       Uri.parse('https://reqres.in/api/login'),
//       body: {
//         'email': email,
//         'password': password,
//       },
//     );

//     if (response.statusCode == 200) {
//       final data = json.decode(response.body);
//       return LoginEntity(token: data['token']);
//     } else {
//       throw Exception('Login failed: ${response.body}');
//     }
//   }
// }




import '../../domain/repositories/login_repository.dart';
import '../data_sources/login_data_sources.dart';
import '../models/login_model.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource = AuthRemoteDataSource();

  @override
  Future<String> login(LoginModel loginModel) async {
    return await remoteDataSource.login(loginModel);
  }
}
