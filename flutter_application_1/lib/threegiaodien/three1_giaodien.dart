//lib\threegiaodien\three1_giaodien.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/threegiaodien/three2_body.dart';
import 'package:flutter_application_1/threegiaodien/three4_provider.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(
    ChangeNotifierProvider(
      ////1113 bages
      create: (_) => Three4Provider(), ////1113 bages
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
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
    Provider.of<Three4Provider>(context, listen: false).readJson();
    print('MyApp'); /////print
    return const Scaffold(
      body: three2Body(),
    );
  }
}
