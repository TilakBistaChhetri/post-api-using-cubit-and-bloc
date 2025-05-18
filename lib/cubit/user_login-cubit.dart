// import 'package:bloc/bloc.dart';
// import 'package:postapi/api_services.dart';
// import 'package:postapi/cubit/user_login_state.dart';


// class UserLoginCubit extends Cubit<UserLoginState> {
//   UserLoginCubit():super(UserLoginInitial());



//   userLogin(String email, String password) {

//     emit(UserLoginLoading());
//     ApiServices().userLogin(email, password).then((value) {
//         emit(UserLoginLoaded(value!));
//         print("userToken:${value.token}");


//     }).onError((error, stackTrace) {
//       print(error.toString());
//         emit(UserLoginError("Login error: ${error.toString()}"));

//     });
//   }
// }


