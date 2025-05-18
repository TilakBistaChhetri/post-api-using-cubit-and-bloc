// import 'dart:convert';

// import 'package:http/http.dart' as http;
// import 'package:postapi/login_model.dart';

// // class ApiServices {

// //   String baseUrl = "https://reqres.in/";

// //   Future<LoginModel> userLogin()async {

// //     var response = await http.post(Uri.parse("$baseUrl/login"));

// //     if(response.statusCode == 200 ) {
// //       LoginModel loginModel = LoginModel.fromJson(jsonDecode(response.body));
// //       return loginModel;
// //     }
// //     else {
// //       return null;
// //     }
// //   }
// // }

// class ApiServices {
//   String baseUrl = "https://reqres.in/";

//   Future<LoginModel?> userLogin(String email, String password) async {
//     var response = await http.post(
//       Uri.parse("$baseUrl/api/login"), // also added /api/
//       body: {
//         "email": email, // required for the endpoint
//         "password": password
//       },
//     );

//     if (response.statusCode == 200) {
//       return LoginModel.fromJson(jsonDecode(response.body));
//     } else {
//       return null;
//     }
//   }
// }

