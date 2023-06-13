import 'package:flutter/material.dart';

import 'category/b6_app4_home_category.dart';
import 'slider/b3_app4_home_slider.dart';

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
