// import 'package:flutter_bloc/flutter_bloc.dart';

// import 'package:postapi/presentation/cubit/login_state.dart';

// import '../../domain/entities/login_entity.dart';
// import '../../domain/usecases/login_usecases.dart';  // LoginEntity

// class UserLoginCubit extends Cubit<UserLoginState> {
//   final LoginUseCase loginUseCase;

//   UserLoginCubit(this.loginUseCase) : super(UserLoginInitial());

//   void login(String email, String password) async {
//     emit(UserLoginLoading());
//     try {
//       final LoginEntity loginEntity = await loginUseCase.execute(email, password);
//       emit(UserLoginLoaded(loginEntity as LoginEntity));
//     } catch (e) {
//       emit(UserLoginError(e.toString()));
//     }
//   }
// }



import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/login_model.dart';
import '../../domain/usecases/login_usecases.dart';
import 'login_state.dart';

class UserLoginCubit extends Cubit<UserLoginState> {
  final LoginUseCase loginUseCase;

  UserLoginCubit(this.loginUseCase) : super(UserLoginInitial());

  void login(String email, String password) async {
    emit(UserLoginLoading());
    try {
      final token = await loginUseCase.execute(LoginModel(email: email, password: password));
      emit(UserLoginLoaded(token));
    } catch (e) {
      emit(UserLoginError(e.toString()));
    }
  }
}
