import 'package:flutter/material.dart';
import 'package:flutter_application_1/hhhhhhhhhh/pagessssssssss/h0_uath_page0_part0.dart';
import 'package:flutter_application_1/hhhhhhhhhh/h6_routers.dart';
import 'package:flutter_application_1/hhhhhhhhhh/provider/h4_providervv_page1_part1.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  //const isLogin = false;
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProvidervvPage1Part1()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: RouteCustom.onGenerateRoute, ////3

        home: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UathPage0Part0();
  }
}
