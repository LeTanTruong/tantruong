//3333333\main.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/3333333/homebody/32_home_page.dart';
import 'package:flutter_application_1/3333333/router/34_routes.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteCustom.onGenerateRoute, ////3
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}
