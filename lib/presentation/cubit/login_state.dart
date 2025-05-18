// // // presentation/cubit/user_login_state.dart
// // import '../../domain/entities/login_entity.dart';

// // abstract class UserLoginState {}

// // class UserLoginInitial extends UserLoginState {}

// // class UserLoginLoading extends UserLoginState {}

// // class UserLoginLoaded extends UserLoginState {
// //   final LoginEntity loginEntity;
// //   UserLoginLoaded(this.loginEntity);
// // }

// // class UserLoginError extends UserLoginState {
// //   final String message;
// //   UserLoginError(this.message);
// // }


// import '../../domain/entities/login_entity.dart';

// abstract class UserLoginState {}

// class UserLoginInitial extends UserLoginState {}

// class UserLoginLoading extends UserLoginState {}

// class UserLoginLoaded extends UserLoginState {
//   final LoginEntity loginEntity;
//   UserLoginLoaded(this.loginEntity);
// }

// class UserLoginError extends UserLoginState {
//   final String message;
//   UserLoginError(this.message);
// }



abstract class UserLoginState {}

class UserLoginInitial extends UserLoginState {}

class UserLoginLoading extends UserLoginState {}

class UserLoginLoaded extends UserLoginState {
  final String token;
  UserLoginLoaded(this.token);
}

class UserLoginError extends UserLoginState {
  final String message;
  UserLoginError(this.message);
}
