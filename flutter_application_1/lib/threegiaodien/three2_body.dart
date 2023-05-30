import 'package:flutter/material.dart';
import 'package:flutter_application_1/threegiaodien/three3_item.dart';
import 'package:flutter_application_1/threegiaodien/three4_provider.dart';
import 'package:flutter_swipe/flutter_swipe.dart';
import 'package:provider/provider.dart';

class three2Body extends StatelessWidget {
  const three2Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final items = Provider.of<Three4Provider>(context).items;
    print('three2Body'); /////print
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 40,
      ),
      child: Swiper(
        layout: SwiperLayout.DEFAULT,
        itemWidth: 400,
        itemHeight: 500.0,
        scrollDirection: Axis.vertical,
        itemCount: items.length,
        itemBuilder: (BuildContext context, index) {
          return ChangeNotifierProvider.value(
            ///chuyền những phần tử như text, icon,... phải có khi chuyền
            value: items[index],

            ///
            child: ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
              child: GridTile(
                header: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: GridTileBar(
                    subtitle: Text(
                      ////đoạn chữ nằm dưới
                      items[index].name,
                      style: const TextStyle(
                        fontSize: 25,
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.bold,
                        // overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ),
                footer: Padding(
                  padding: const EdgeInsets.only(
                    top: 30,
                    bottom: 60,
                  ),
                  child: GridTileBar(
                    title: Consumer<Item>(
                      builder: (context, item, child) {
                        return Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: (() {
                                item.toggleIsStar();
                              }),
                              child: Icon(
                                Icons.star,
                                size: 30,
                                color:
                                    item.isStar ? Colors.yellow : Colors.white,
                              ),
                            ),
                            InkWell(
                              onTap: (() {
                                item.toggleIsStar();
                              }),
                              child: Icon(
                                Icons.star,
                                size: 30,
                                color:
                                    item.isStar ? Colors.yellow : Colors.white,
                              ),
                            ),
                            InkWell(
                              onTap: (() {
                                item.toggleIsStar();
                              }),
                              child: Icon(
                                Icons.star,
                                size: 30,
                                color:
                                    item.isStar ? Colors.yellow : Colors.white,
                              ),
                            ),
                            InkWell(
                              onTap: (() {
                                item.toggleIsStar();
                              }),
                              child: Icon(
                                Icons.star,
                                size: 30,
                                color:
                                    item.isStar ? Colors.yellow : Colors.white,
                              ),
                            ),
                            InkWell(
                              onTap: (() {
                                item.toggleIsStar();
                              }),
                              child: Icon(
                                Icons.star,
                                size: 30,
                                color:
                                    item.isStar ? Colors.yellow : Colors.white,
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                    subtitle: Text(
                      ////đoạn chữ nằm dưới
                      items[index].description,
                      //items[index].description,
                      style: const TextStyle(
                        fontSize: 25,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 30,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          items[index].image,
                        ),
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(
                          20,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
////'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1228.jpg'
///////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////
// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/threegiaodien/three3_item.dart';
// import 'package:flutter_application_1/threegiaodien/three4_provider.dart';
// import 'package:flutter_swipe/flutter_swipe.dart';
// import 'package:provider/provider.dart';

// class three2Body extends StatelessWidget {
//   const three2Body({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final items = Provider.of<Three4Provider>(context).items;
//     print('three2Body'); /////print
//     return Padding(
//       padding: const EdgeInsets.symmetric(
//         horizontal: 20,
//         vertical: 40,
//       ),
//       child: Swiper(
//         layout: SwiperLayout.DEFAULT,
//         itemWidth: 400,
//         itemHeight: 500.0,
//         scrollDirection: Axis.vertical,
//         itemCount: items.length,
//         itemBuilder: (BuildContext context, index) {
//           return ChangeNotifierProvider.value(
//             ///chuyền những phần tử như text, icon,... phải có khi chuyền
//             value: items[index],

//             ///
//             child: ClipRRect(
//               borderRadius: const BorderRadius.all(
//                 Radius.circular(10),
//               ),
//               child: GridTile(
//                 header: Padding(
//                   padding: const EdgeInsets.symmetric(vertical: 30),
//                   child: GridTileBar(
//                     subtitle: Text(
//                       ////đoạn chữ nằm dưới
//                       items[index].name,
//                       style: const TextStyle(
//                         fontSize: 25,
//                         color: Color.fromARGB(255, 255, 255, 255),
//                         fontWeight: FontWeight.bold,
//                         // overflow: TextOverflow.ellipsis,
//                       ),
//                     ),
//                   ),
//                 ),
//                 footer: Padding(
//                   padding: const EdgeInsets.only(
//                     top: 30,
//                     bottom: 60,
//                   ),
//                   child: GridTileBar(
//                     title: Consumer<Item>(
//                       builder: (context, item, child) {
//                         return Row(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             InkWell(
//                               onTap: (() {
//                                 item.toggleIsStar();
//                               }),
//                               child: Icon(
//                                 Icons.star,
//                                 size: 30,
//                                 color:
//                                     item.isStar ? Colors.yellow : Colors.white,
//                               ),
//                             ),
//                             InkWell(
//                               onTap: (() {
//                                 item.toggleIsStar();
//                               }),
//                               child: Icon(
//                                 Icons.star,
//                                 size: 30,
//                                 color:
//                                     item.isStar ? Colors.yellow : Colors.white,
//                               ),
//                             ),
//                             InkWell(
//                               onTap: (() {
//                                 item.toggleIsStar();
//                               }),
//                               child: Icon(
//                                 Icons.star,
//                                 size: 30,
//                                 color:
//                                     item.isStar ? Colors.yellow : Colors.white,
//                               ),
//                             ),
//                             InkWell(
//                               onTap: (() {
//                                 item.toggleIsStar();
//                               }),
//                               child: Icon(
//                                 Icons.star,
//                                 size: 30,
//                                 color:
//                                     item.isStar ? Colors.yellow : Colors.white,
//                               ),
//                             ),
//                             InkWell(
//                               onTap: (() {
//                                 item.toggleIsStar();
//                               }),
//                               child: Icon(
//                                 Icons.star,
//                                 size: 30,
//                                 color:
//                                     item.isStar ? Colors.yellow : Colors.white,
//                               ),
//                             ),
//                           ],
//                         );
//                       },
//                     ),
//                     subtitle: Text(
//                       ////đoạn chữ nằm dưới
//                       items[index].description,
//                       //items[index].description,
//                       style: const TextStyle(
//                         fontSize: 25,
//                         color: Color.fromARGB(255, 255, 255, 255),
//                       ),
//                     ),
//                   ),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.symmetric(
//                     vertical: 30,
//                   ),
//                   child: Container(
//                     decoration: BoxDecoration(
//                       image: DecorationImage(
//                         fit: BoxFit.cover,
//                         image: NetworkImage(
//                           items[index].image,
//                         ),
//                       ),
//                       borderRadius: const BorderRadius.all(
//                         Radius.circular(
//                           20,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }