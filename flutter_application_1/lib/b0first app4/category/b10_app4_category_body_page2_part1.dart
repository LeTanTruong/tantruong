// import 'package:flutter/material.dart';

// class CategoryBody extends StatelessWidget {
//   const CategoryBody({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//         padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2,
//           crossAxisSpacing: 10,
//           mainAxisSpacing: 10,
//           childAspectRatio: 3 / 4,
//         ),
//         itemCount: 10,
//         itemBuilder: (BuildContext context, int index) {
//           return GridTile(
//             footer: const ClipRRect(
//               borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
//               child: GridTileBar(
//                 backgroundColor: Colors.black45,
//                 title: Text('Iphone 12 Pro'),
//                 //
//                 subtitle: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       'Tempora et aliquam amet id.',
//                       style: TextStyle(fontSize: 15),
//                     ),
//                     //
//                     SizedBox(height: 4),
//                     //
//                     Text(
//                       '20.000 VNĐ',
//                       style: TextStyle(color: Colors.yellow, fontSize: 16),
//                     ),
//                   ],
//                 ),
//                 trailing: Icon(Icons.shopping_cart),
//               ),
//             ),
//             child: Container(
//               decoration: const BoxDecoration(
//                 borderRadius: BorderRadius.all(Radius.circular(20)),
//                 image: DecorationImage(
//                   fit: BoxFit.cover,
//                   image: NetworkImage('http://placeimg.com/640/480/city'),
//                 ),
//               ),
//             ),
//           );
//         });
//   }
// }

//////////////////////////////////////////////////////////////////////////////////////////////
//category\b10_app4_category_body_page2_part1.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/b0first%20app4/provider/b8_app4_category_provider_part2.dart';
import 'package:provider/provider.dart';

class CategoryBody extends StatefulWidget {
  const CategoryBody({Key? key}) : super(key: key);

  @override
  State<CategoryBody> createState() => _CategoryBodyState();
}

class _CategoryBodyState extends State<CategoryBody> {
  late Future productInCategoryFuture;

  @override
  void didChangeDependencies() {
    final Map<String, dynamic> arg =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    productInCategoryFuture =
        Provider.of<CategoryProvider>(context).getProductCategory(arg['id']);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      initialData: [],
      future: productInCategoryFuture,
      builder: (context, asyncData) {
        var data = [];
        if (asyncData.hasData) {
          data = asyncData.data as List;
          return GridView.builder(

              ///DN www GridView.builder1////DNlấynguyêncụmGridView.builder cho vào return
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 3 / 4,
              ),
              itemCount: data.length, //data.length //DN bao nhiêu phần tử
              itemBuilder: (BuildContext context, int index) {
                return GridTile(
                  footer: ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                        bottom: Radius.circular(20)),
                    child: GridTileBar(
                      backgroundColor: Colors.black45,
                      title: Text(data[index].name),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data[index].summary,
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            data[index].price.toString(),
                            style:
                                TextStyle(color: Colors.yellow, fontSize: 16),
                          ),
                        ],
                      ),
                      trailing: Icon(Icons.shopping_cart),
                    ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(data[index].image),
                      ),
                    ),
                  ),
                );
              });
        } else {
          return Container(
            child: const Text('err'),
          );
        }
      },
    );
  }
}
