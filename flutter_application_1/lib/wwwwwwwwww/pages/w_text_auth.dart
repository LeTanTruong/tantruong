// import 'package:flutter/material.dart';

// class TextUath extends StatefulWidget {

//    String hintText;
//    TextEditingController controller;
//   TextUath({
//     super.key,
//     required this.hintText,
//     required this.controller,
//   });
  

//   @override
//   State<TextUath> createState() => _TextUathState();
// }

// class _TextUathState extends State<TextUath> {
//   TextEditingController _emailController = new TextEditingController();
// ////7
//   TextEditingController _passwordController = new TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Padding(
//           padding:  EdgeInsets.fromLTRB(20, 20, 20, 0),
//           child: TextFormField(
//             controller: widget.controller,
//             decoration: InputDecoration(
//               // border: InputBorder.none,
//               border: OutlineInputBorder(
//                 //borderRadius: BorderRadius.circular(30.0),
//                 borderSide: BorderSide.none,
//               ),
//               filled: true,
//               fillColor: Colors.grey,

//               hintStyle: TextStyle(
//                 fontSize: 20.0,
//                 color: Colors.black,
//               ),
//               hintText: widget.hintText,
//               contentPadding: EdgeInsets.all(20.0),
//             ),
//           ),
//         ),
//         // Padding(
//         //     padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
//         //     child: TextFormField(
//         //       decoration: const InputDecoration(
//         //         // border: InputBorder.none,
//         //         border: OutlineInputBorder(
//         //           //borderRadius: BorderRadius.circular(30.0),
//         //           borderSide: BorderSide.none,
//         //         ),
//         //         filled: true,
//         //         fillColor: Colors.grey,
//         //         hintStyle: TextStyle(
//         //             fontSize: 20.0, color: Color.fromARGB(255, 0, 0, 0)),
//         //         hintText: 'PassWord',
//         //         contentPadding: EdgeInsets.all(20.0),
//         //       ),
//         //     ),
//         //   ),
//       ],
//     );
//   }
// }
