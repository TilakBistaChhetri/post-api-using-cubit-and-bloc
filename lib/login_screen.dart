// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:postapi/cubit/user_login-cubit.dart';

// import 'cubit/user_login_state.dart';

// class LoginScreen extends StatelessWidget {
//   const LoginScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     TextEditingController emailController = TextEditingController();
//     TextEditingController passwordController = TextEditingController();
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.redAccent,
//         centerTitle: true,
//         title: Text(
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
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextField(
//               controller: emailController,
//               decoration: const InputDecoration(hintText: "Email"),
//             ),
//             SizedBox(height: 20),

//             TextField(
//               controller: passwordController,
//               decoration: const InputDecoration(hintText: "Password"),
//             ),
//             SizedBox(height: 30),
//             BlocProvider(
//               create: (context) => UserLoginCubit(), // ✅ Fixed
//               child: BlocConsumer<UserLoginCubit, UserLoginState>(
//                 listener: (context, state) {
//                   if (state is UserLoginLoaded) {
//                     ScaffoldMessenger.of(context).showSnackBar(
//                       SnackBar(content: Text("Login Successful!")),
//                     );
//                   } else if (state is UserLoginError) {
//                     ScaffoldMessenger.of(
//                       context,
//                     ).showSnackBar(SnackBar(content: Text(state.message)));
//                   }
//                 },
//                 builder: (context, state) {
//                   return ElevatedButton(
//                     onPressed:
//                         state is UserLoginLoading
//                             ? null
//                             : () {
//                               context.read<UserLoginCubit>().userLogin(
//                                 emailController.text.trim(),
//                                 passwordController.text.trim(),
//                               );
//                             },
//                     child:
//                         state is UserLoginLoading
//                             ? SizedBox(
//                               height: 20,
//                               width: 20,
//                               child: CircularProgressIndicator(
//                                 color: Colors.yellow,
//                                 strokeWidth: 2,
//                               ),
//                             )
//                             : Text("Continue"),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
