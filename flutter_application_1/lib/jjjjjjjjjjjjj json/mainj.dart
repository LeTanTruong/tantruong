import 'package:flutter/material.dart';
import 'package:flutter_application_1/jjjjjjjjjjjjj%20json/body/home_body_1_j.dart';
import 'package:flutter_application_1/jjjjjjjjjjjjj%20json/body/j10_home_page_next2.dart';
import 'package:flutter_application_1/jjjjjjjjjjjjj%20json/body/j7_home_page_next1.dart';
import 'package:flutter_application_1/jjjjjjjjjjjjj%20json/provider/12_provider_category2_read.dart';
import 'package:flutter_application_1/jjjjjjjjjjjjj%20json/provider/j9_provider_product_read.dart';
import 'package:flutter_application_1/jjjjjjjjjjjjj%20json/provider/provider_category_read_j4.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProviderCategory()),
        ChangeNotifierProvider(create: (_) => ProviderProduct()),
        ChangeNotifierProvider(create: (_) => ProviderCategory2()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/', ////3 chuyển trang đen
        routes: {
          HomeBody.routerName: ((context) => const HomeBody()),
          HomePageNext1.routerName: ((context) => const HomePageNext1()),
          HomePageNext2.routerName: ((context) => const HomePageNext2()),
        },
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
    return HomeBody();
  }
}
