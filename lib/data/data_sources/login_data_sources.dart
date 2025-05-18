// // data/datasources/auth_remote_datasource.dart
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// import '../models/login_model.dart';

// class AuthRemoteDataSource {
//   final String baseUrl = "https://reqres.in/api";

//   Future<LoginModel> login(String email, String password) async {
//     final response = await http.post(
//       Uri.parse('$baseUrl/login'),
//       body: {'email': email, 'password': password},
//     );

//     if (response.statusCode == 200) {
//       return LoginModel.fromJson(jsonDecode(response.body));
//     } else {
//       throw Exception('Login failed');
//     }
//   }
// }


import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/login_model.dart';


class AuthRemoteDataSource {
  final String baseUrl = "https://reqres.in/api";

  Future<String> login(LoginModel loginModel) async {
    final response = await http.post(
      Uri.parse('$baseUrl/login'),
      body: loginModel.toJson(),
    );

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      return json['token']; // returning token string
    } else {
      throw Exception('Login failed');
    }
  }
}
