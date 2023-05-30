import 'package:flutter/material.dart';
import 'package:flutter_application_1/four_giaodien/four2_body.dart';

void main(List<String> args) {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  // final List<Item> Items = [
  //   Item(
  //       id: '1',
  //       name: 'District Integration Representative',
  //       image: 'assets/images/img8.jpg'),
  //   Item(
  //       id: '2',
  //       name: 'Dynamic Interactions Designer',
  //       image: 'assets/images/img9.jpg'),
  //   Item(
  //       id: '3',
  //       name: 'Direct Implementation Facilitator',
  //       image: 'assets/images/img10.jpg'),
  // ];

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: four2_body(),
    );
  }
}
