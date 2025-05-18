// // data/models/login_model.dart
// import '../../domain/entities/login_entity.dart';

// class LoginModel extends LoginEntity {
//   LoginModel({required String token}) : super(token: token);

//   factory LoginModel.fromJson(Map<String, dynamic> json) {
//     return LoginModel(token: json['token']);
//   }

//   Map<String, dynamic> toJson() {
//     return {'token': token};
//   }
// }




// class LoginModel {
//   String? email;
//   String? password;

//   LoginModel({this.email, this.password});

//   LoginModel.fromJson(Map<String, dynamic> json) {
//     email = json['email'];
//     password = json['password'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['email'] = this.email;
//     data['password'] = this.password;
//     return data;
//   }
// }




class LoginModel {
  String? email;
  String? password;

  LoginModel({this.email, this.password});

  LoginModel.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'password': password,
    };
  }
}
