// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import '../../data/repositories/login_repositories_impl.dart';
// import '../../domain/usecases/login_usecases.dart';
// import '../cubit/login_cubit.dart';
// import '../cubit/login_state.dart';

// class LoginScreen extends StatelessWidget {
//   const LoginScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final emailController = TextEditingController();
//     final passwordController = TextEditingController();

//     final loginUseCase = LoginUseCase(AuthRepositoryImpl());

//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.redAccent,
//         centerTitle: true,
//         title: const Text(
//           "Login",
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 22,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 30),
//         child: BlocProvider(
//           create: (context) => UserLoginCubit(loginUseCase),
//           child: BlocConsumer<UserLoginCubit, UserLoginState>(
//             listener: (context, state) {
//               if (state is UserLoginLoaded) {
//                 ScaffoldMessenger.of(context).showSnackBar(
//                   const SnackBar(content: Text("Login Successful!")),
//                 );
//               } else if (state is UserLoginError) {
//                 ScaffoldMessenger.of(
//                   context,
//                 ).showSnackBar(SnackBar(content: Text(state.message)));
//               }
//             },
//             builder: (context, state) {
//               return Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   TextField(
//                     controller: emailController,
//                     decoration: const InputDecoration(hintText: "Email"),
//                   ),
//                   const SizedBox(height: 20),
//                   TextField(
//                     controller: passwordController,
//                     decoration: const InputDecoration(hintText: "Password"),
//                     obscureText: true,
//                   ),
//                   const SizedBox(height: 30),
//                   ElevatedButton(
//                     onPressed:
//                         state is UserLoginLoading
//                             ? null
//                             : () {
//                               context.read<UserLoginCubit>().login(
//                                 emailController.text.trim(),
//                                 passwordController.text.trim(),
//                               );
//                             },
//                     child:
//                         state is UserLoginLoading
//                             ? const SizedBox(
//                               height: 20,
//                               width: 20,
//                               child: CircularProgressIndicator(
//                                 strokeWidth: 2,
//                                 color: Colors.white,
//                               ),
//                             )
//                             : const Text("Continue"),
//                   ),
//                 ],
//               );
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import '../../data/repositories/login_repositories_impl.dart';
import '../../domain/usecases/login_usecases.dart';
import '../cubit/login_cubit.dart';
import '../cubit/login_state.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    final loginUseCase = LoginUseCase(AuthRepositoryImpl());

    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: BlocProvider(
          create: (_) => UserLoginCubit(loginUseCase),
          child: BlocConsumer<UserLoginCubit, UserLoginState>(
            listener: (context, state) {
              if (state is UserLoginLoaded) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Login Successful! Token: ${state.token}")),
                );
              } else if (state is UserLoginError) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(state.message)),
                );
              }
            },
            builder: (context, state) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    controller: emailController,
                    decoration: const InputDecoration(hintText: "Email"),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    controller: passwordController,
                    decoration: const InputDecoration(hintText: "Password"),
                    obscureText: true,
                  ),
                  const SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: state is UserLoginLoading
                        ? null
                        : () {
                            context.read<UserLoginCubit>().login(
                                  emailController.text.trim(),
                                  passwordController.text.trim(),
                                );
                          },
                    child: state is UserLoginLoading
                        ? const CircularProgressIndicator(color: Colors.white)
                        : const Text("Login"),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
