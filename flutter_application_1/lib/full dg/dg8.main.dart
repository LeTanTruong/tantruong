// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// import 'dg11_c_provider.dart';

// void main(List<String> args) {
//   runApp(
//     MultiProvider(
//       providers: [
//         ChangeNotifierProvider(create: (_) => CProvider()),
//       ],
//       child: MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: MyApp(),
//       ),
//     ),
//   );
// }

// class MyApp extends StatefulWidget {
//   const MyApp({
//     Key? key,
//   }) : super(key: key);

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   final TextFieldFocusNode = FocusNode();

//   TextEditingController emailController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();

//   final _formKey = GlobalKey<FormState>();
//   //bool check = false;

//   void handleSubmit() {
//     if (_formKey.currentState!.validate()) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text('success')),
//       );
//     }
//   }

//   void _trySubmitForm() {
//     final bool? isValid = _formKey.currentState?.validate();
//     if (isValid == true) {
//       final email = emailController.text;
//       final password = passwordController.text;
//       //  print('email$email password$password');
//       context.read()<Provider>().login(email, password);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Form(
//             key: _formKey,
//             child: Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: Center(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     textformfield(
//                       check = true,
//                       hinText: 'Email',
//                       ErrMess: 'đăng nhập Email',
//                       controller: emailController,
//                     ),
//                     //
//                     SizedBox(height: 10),
//                     //
//                     textformfield(
//                       hinText: 'Password',
//                       ErrMess: 'đăng nhặp Password',
//                       controller: passwordController,
//                       iconContent: Container(
//                         child: GestureDetector(
//                           onTap: _toggleCheck,
//                           child: Icon(
//                             check ? Icons.visibility_off : Icons.visibility,
//                             size: 20,
//                           ),
//                         ),
//                       ),
//                     ),
//                     //
//                     SizedBox(height: 10),
//                     //
//                     ElevatedButton(
//                       onPressed: handleSubmit,
//                       style: ElevatedButton.styleFrom(
//                           minimumSize: const Size(
//                             double.infinity,
//                             50,
//                           ),
//                           backgroundColor:
//                               const Color.fromARGB(255, 255, 7, 193),
//                           elevation: 0),
//                       child: const Text(
//                         'Login',
//                         style: TextStyle(fontSize: 25, color: Colors.blue),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
