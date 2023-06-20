import 'package:flutter/material.dart';
import 'package:flutter_application_1/ddddddddddd/home_body_3.dart';
import 'package:flutter_application_1/ddddddddddd/provider_category.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProviderCategory()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        // initialRoute: '/',
        // routes: {
        //   MyApp.routerName: ((context) => const MyApp()),
        // },
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
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'datat',
          style:
              TextStyle(fontSize: 20, color: Color.fromARGB(255, 255, 190, 11)),
        ),
      ),
      body: SingleChildS(),
    );
  }
}
