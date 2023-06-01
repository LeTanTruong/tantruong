//lib\threegiaodien\three5_category.dart
import 'package:flutter/material.dart';

class Three5Category extends StatelessWidget {
  const Three5Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          Navigator.of(context).pop();
        },
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
          ),
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 10,
                  child: Container(
                    height: 500,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            'http://placeimg.com/640/480/transport'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                const Expanded(
                  flex: 3,
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('dddhhhhhhhhhhhhh h  th h  t ',
                              style:
                                  TextStyle(fontSize: 25, color: Colors.black)),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(Icons.star, size: 20, color: Colors.amber),
                                Icon(Icons.star, size: 20, color: Colors.amber),
                                Icon(Icons.star, size: 20, color: Colors.amber),
                                Icon(Icons.star, size: 20, color: Colors.amber),
                                Icon(Icons.star,
                                    size: 20,
                                    color: Color.fromARGB(255, 133, 133, 133)),
                              ]),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                              'dong 3rg re g eb e dfrb r b rtb  fd b rf vd b g br e fd ve r vre v re ab tr b rs fx ',
                              style:
                                  TextStyle(fontSize: 17, color: Colors.black)),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}





// Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               width: double.infinity,
//               height: 400,
//               decoration: const BoxDecoration(
//                 image: DecorationImage(
//                   image: NetworkImage('http://placeimg.com/640/480/transport'),
//                   fit: BoxFit.fill,
//                 ),
//               ),
//             ),
//             const Padding(
//               padding: EdgeInsets.only(
//                 left: 20,
//                 top: 20,
//                 right: 20,
//                 bottom: 20,
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
                  // Text('dddhhhhhhhhhhhhh h  th h  t ',
                  //     style: TextStyle(fontSize: 25, color: Colors.black)),
                  // Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  //   Icon(Icons.star, size: 20, color: Colors.amber),
                  //   Icon(Icons.star, size: 20, color: Colors.amber),
                  //   Icon(Icons.star, size: 20, color: Colors.amber),
                  //   Icon(Icons.star, size: 20, color: Colors.amber),
                  //   Icon(Icons.star,
                  //       size: 20, color: Color.fromARGB(255, 133, 133, 133)),
                  // ]),
                  // Text(
                  //     'dong 3rg re g eb e dfrb r b rtb  fd b rf vd b g br e fd ve r vre v re ab tr b rs fx ',
                  //     style: TextStyle(fontSize: 17, color: Colors.black)),
//                 ],