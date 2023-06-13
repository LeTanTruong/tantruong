// import 'package:flutter/material.dart';

// // ignore: must_be_immutable
// class Text_Form_Field extends StatefulWidget {
//   Text_Form_Field({
//     super.key,
//     required this.hinText,
//     required this.ErrMess,
//     required this.controller,
//     required this.iconContent,
//     this.check = false,
//   }); ////2
//   final hinText, ErrMess, iconContent, controller; ////1
//   bool check;
//   TextEditingController controller;

//   @override
//   State<Text_Form_Field> createState() => _Text_Form_FieldState();
// }

// class _Text_Form_FieldState extends State<Text_Form_Field> {
// //TextEditingController _controller =TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       obscureText: widget.check,
//       controller: widget.controller,
//       validator: (value) {
//         if (value == null || value.isEmpty) {
//           return '${widget.ErrMess}';
//         }
//         return null;
//       },
//       decoration: InputDecoration(
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(30.0),
//           borderSide: BorderSide.none,
//         ),
//         filled: true,
//         fillColor: Colors.grey,
//         hintStyle: const TextStyle(fontSize: 20.0, color: Colors.white),
//         hintText: 'Email',
//         contentPadding: const EdgeInsets.all(20.0),
//       ),
//     );
//   }
// }
