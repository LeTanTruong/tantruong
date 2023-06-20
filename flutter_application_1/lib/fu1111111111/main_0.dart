import 'package:flutter/material.dart';
import 'package:flutter_application_1/fu1111111111/home/f3_home_product.dart';
import 'package:flutter_application_1/fu1111111111/repositorires/item_repository_5.dart';
import 'package:flutter_application_1/jjjjjjjjjjjjj/provider/j9_provider_product_read.dart';
import 'package:provider/provider.dart';
import 'home/home_page_1.dart';

void main(List<String> args) {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ItemRepository()),
        ChangeNotifierProvider(create: (_) => ProviderProduct()),
      ],

      ///////////////////////
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/', ////1111 chuyển trang đen
        routes: {
          HomePage.routerName: ((context) => HomePage()),
          HomeProduct.routerName: (context) => HomeProduct(),
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
    return HomePage();
  }
}
