
// import '../../domain/entities/login_entity.dart';
// import '../../domain/repositories/login_repository.dart';

// class AuthRepositoryImpl implements AuthRepository {
//   @override
//   Future<LoginEntity> login(String email, String password) async {
//     // Mocked response – replace this with real API logic using Dio or http
//     await Future.delayed(const Duration(seconds: 2)); // simulate delay

//     if (email == "test@example.com" && password == "123456") {
//       return LoginEntity(token: "mock_token_123");
//     } else {
//       throw Exception("Invalid email or password");
//     }
//   }
// }



// data/repositories/auth_repository_impl.dart
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../domain/entities/login_entity.dart';
import '../../domain/repositories/login_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  @override
  Future<LoginEntity> login(String email, String password) async {
    final response = await http.post(
      Uri.parse('https://reqres.in/api/login'),
      body: {
        'email': email,
        'password': password,
      },
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return LoginEntity(token: data['token']);
    } else {
      throw Exception('Login failed: ${response.body}');
    }
  }
}
