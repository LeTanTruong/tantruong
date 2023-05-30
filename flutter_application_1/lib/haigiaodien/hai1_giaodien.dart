//giao dien logic 1 image
import 'package:flutter/material.dart';
import 'package:flutter_swipe/flutter_swipe.dart';

void main(List<String> args) {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(
          10,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Swiper(
              layout: SwiperLayout.STACK,
              itemWidth: double.infinity,
              itemHeight: 380,
              scrollDirection: Axis.vertical,
              itemCount: 1,
              itemBuilder: (BuildContext context, index) {
                return Image.network(
                  'https://cloudflare-ipfs.com/ipfs/Qmd3W5DuhgHirLHGVixi6V76LhCkZUz6pnFt5AJBiyvHye/avatar/1227.jpg',
                  fit: BoxFit.cover,
                );
              },
            ),
            Container(
              width: double.infinity,
              height: 380,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/img5.jpg'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
