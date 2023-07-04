//lib\b0first app4\b2_app4_home_part1.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/b0first%20app4/category/b6_app4_home_category_part2.dart';
import 'package:flutter_application_1/b0first%20app4/slider/b3_app4_home_slider_part1.dart';

class HomePage extends StatelessWidget {
  static const routerName = '/';
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Home Page'),
      ),
      body: const Column(
        children: [
          HomeSlider(),
          SizedBox(height: 10),
          Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
          SizedBox(height: 20),
          HomeCategory(),
        ],
      ),
    );
  }
}
