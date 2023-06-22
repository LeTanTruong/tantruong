//3333333\pages\33_category_page.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/3333333/router/34_routes.dart';

class CategoryPage extends StatefulWidget {
  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  // final name; ////10
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.amber,
      body: Center(
        ////2 pop
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, RouterName.categoryPage3);
              },
              child: const Text('mua hàng a b c'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, RouterName.categoryPage5);
              },
              child: const Text('danh sách'),
            ),
          ],
        ), ////2 pop
      ),

      //////////////Scafflod
    );
  }
}
