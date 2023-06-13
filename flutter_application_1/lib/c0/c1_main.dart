import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'c2_body_safeArea.dart';
import 'c4_provider_category.dart';

void main(List<String> args) {
  runApp(
    MultiProvider(
      ////4
      providers: [
        ChangeNotifierProvider(create: (_) => ProviderCategory()),
      ], ////4
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          MyApp.routerName: ((context) => const MyApp()),
        },
        //home: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  static const routerName = '/';
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body_safeArea(),
    );
  }
}