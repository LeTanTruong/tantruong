// import 'package:flutter/material.dart';

// class AspectRatioHomecate extends StatelessWidget {
//   // String title;
//   // String intro;
//   AspectRatioHomecate({
//     Key? key,
//     // required this.title,required this.intro,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return AspectRatio(
//       aspectRatio: 3,
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Row(
//           children: [
//             Expanded(
//               child: Container(
//                 color: const Color.fromARGB(255, 11, 7, 255),
//               ),
//             ),
//             Expanded(
//               flex: 2,
//               child: Container(
//                 color: Colors.amber,
//                 padding: const EdgeInsets.all(10),
//                 child: const Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     Text(
                      
//                        categoryItem[index].title.toString(),
//                       //'dd',
//                       style: TextStyle(
//                         fontSize: 20,
//                         color: Color.fromARGB(255, 229, 243, 33),
//                       ),
//                       overflow: TextOverflow.ellipsis,
//                     ),
//                     Text(
//                       //categoryItem[index].intro.toString(),
                      
//                       'dddd',
//                       style: TextStyle(
//                         fontSize: 20,
//                         color: Color.fromARGB(255, 0, 0, 0),
//                       ),
//                       maxLines: 2,
//                       overflow: TextOverflow.ellipsis,
//                     ),
//                     Text(
//                       'Mar.5.2023',
//                       style: TextStyle(
//                         fontSize: 15,
//                         color: Colors.blue,
//                       ),
//                       overflow: TextOverflow.ellipsis,
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
