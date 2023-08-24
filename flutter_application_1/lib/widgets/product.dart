// import 'package:flutter/material.dart';

// class ProductPage extends StatelessWidget {
//   static const routerName = "ProductPage";

//   const ProductPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final data = ModalRoute.of(context)!.settings.arguments as Map;
//     final Product = data['data'];
//     return Scaffold(
//       body: CustomScrollView(
//         slivers: <Widget>[
//           SliverAppBar(
//             pinned: true,
//             snap: false,
//             floating: false,
//             expandedHeight: 400.0,
//             flexibleSpace: FlexibleSpaceBar(
//               title: Text(Product.name),
//               background: Padding(
//                 padding: EdgeInsets.all(60),
//                 child: Image(
//                   fit: BoxFit.contain,
//                   image: NetworkImage(Product.image),
//                 ),
//               ),
//             ),
//           ),
//           SliverToBoxAdapter(
//             child: Column(
//               children: [
//                 Text(
//                   Product.description,
//                   maxLines: 10,

//                   ///tối đa bao nhiêu dòng
//                 ),
//                 SizedBox(
//                   height: 30,
//                 ),

//                 ///row nằm ngang , mainAxisAlignment căn chỉnh trục chính
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     ElevatedButton(
//                       onPressed: () {},
//                       child: Icon(
//                         Icons.remove,
//                       ),
//                     ),

//                     ///
//                     SizedBox(
//                       width: 30,
//                     ),

//                     ///
//                     Text(
//                       '1',
//                     ),

//                     ///
//                     SizedBox(
//                       width: 30,
//                     ),

//                     ///
//                     ElevatedButton(
//                       onPressed: () {},
//                       child: Icon(
//                         Icons.add,
//                       ),
//                     ),

//                     ///
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),

//       /// persistentFooterButtons Nút chân trang liên tục
//       persistentFooterButtons: [
//         Padding(
//           padding: EdgeInsets.symmetric(horizontal: 20),
//           child: SizedBox(
//             width: double.infinity,

//             /// ElevatedButton Nút nâng cao
//             child: ElevatedButton(
//               child: Text('Add Product'),
//               onPressed: () {},
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
