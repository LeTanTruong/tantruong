import 'package:flutter/material.dart';
import 'package:flutter_application_1/fu1111111111/home/f3_home_product.dart';
import 'package:flutter_application_1/fu1111111111/home/f6_home_product2_page.dart';
import 'package:flutter_application_1/fu1111111111/home/home_page_1.dart';
import 'package:flutter_application_1/fu1111111111/provider/f5_product_provider.dart';
import 'package:flutter_application_1/fu1111111111/provider/f7_product2_provider.dart';
import 'package:flutter_application_1/fu1111111111/repositorires/item_repository_5.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ItemRepository()),
        ChangeNotifierProvider(create: (_) => ProviderProduct()),
        ChangeNotifierProvider(create: (_) => ProviderProduct2()),
      ],

      ///////////////////////
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/', ////1111 chuyển trang đen
        routes: {
          HomePage.routerName: ((context) => const HomePage()),
          HomeProduct2.routerName: (context) => HomeProduct2(),
          HomeProduct.routerName: (context) => const HomeProduct(),
        },
        //home: MyApp(),
      ),
    ),

    ////4
  );
}

class MyApp extends StatefulWidget {
  MyApp({
    Key? key,
  }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const HomePage();
  }
}
