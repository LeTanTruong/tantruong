//b0first\b1_main.dart
//import 'dart:js';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'category/b8_app4_category_provider.dart';
import 'category/b9_app4_category.dart';
import 'b2_app4_home.dart';
import 'slider/b5_app4_slider_provider.dart';

void main(List<String> args) {
  runApp(
    MultiProvider(
      ////1115 ChangeNotifierProvider
      providers: [
        ////1115 ChangeNotifierProvider
        ChangeNotifierProvider(
          ////1115 ChangeNotifierProvider
          create: (_) => SliderProvider(), ////1115 ChangeNotifierProvider
        ), ////1115 ChangeNotifierProvider
        ChangeNotifierProvider(
          ////11118 ChangeNotifierProvider
          create: (_) => CategoryProvider(), ////11118 ChangeNotifierProvider
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: HomePage.routerName, ////1111 routerName
        routes: {
          ////1111 routerName
          HomePage.routerName: (context) => HomePage(), ////1111 routerName
          CategoryPage.routerName: (context) =>
              CategoryPage(), ////11126 chuyển trang
        },
      ),
    ),
  );
}
