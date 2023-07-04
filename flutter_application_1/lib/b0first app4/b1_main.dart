//b0first\b1_main.dart
//import 'dart:js';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'provider/b8_app4_category_provider_part2.dart';
import 'category/b9_app4_category_page2_part1.dart';
import 'b2_app4_home_part1.dart';
import 'provider/b5_app4_slider_provider_part1.dart';

void main(List<String> args) {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => SliderProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => CategoryProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: HomePage.routerName,
        routes: {
          HomePage.routerName: (context) => HomePage(),
          CategoryPage.routerName: (context) => CategoryPage(),
        },
      ),
    ),
  );
}
