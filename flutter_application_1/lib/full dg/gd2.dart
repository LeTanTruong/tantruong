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
      body: Swiper(
        layout: SwiperLayout.DEFAULT,
        //scrollDirection: Axis.vertical, //vuốt theo hướng ngang hay đứng
        itemWidth: double.infinity,
        itemHeight: 400,
        itemCount: 1,
        itemBuilder: (BuildContext context, index) {
          return ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(
                20,
              ),
            ),
            child: Image.network(
              'http://placeimg.com/640/480/transport',
              fit: BoxFit.fill,
            ),
          );
        },
      ),
    );
  }
}
