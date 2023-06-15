import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'drawer.dart';
import 'gridview/gridview_provider_a5.dart';
import 'home_body.dart';

void main(List<String> args) {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => GridviewProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        // initialRoute: '/', ////1111 chuyển trang đen
        // routes: {
        //   MyApp.routerName: ((context) => const MyApp()),
        // },
        home: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //static const routerName = '/';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: drawer(),
        appBar: AppBar(
          // leadingWidth: double.infinity,
          // toolbarHeight: 50,
          elevation: 0,
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
          // title: const Text(
          //   'Flutter Demo Home Page',
          //   style: TextStyle(
          //     color: Color.fromARGB(255, 212, 86, 86),
          //     fontSize: 25,
          //   ),
          // ),
        ),
        body: homebody(),
      ),
    );
  }
}
