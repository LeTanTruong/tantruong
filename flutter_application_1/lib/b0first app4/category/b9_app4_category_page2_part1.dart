//category\b9_app4_category.dart
import 'package:flutter/material.dart';
import 'b10_app4_category_body_page2_part1.dart';

class CategoryPage extends StatelessWidget {
  static const routerName = 'CategoryPage.routerName';
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> arg =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    //  print(arg);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(arg['name']),
      ),
      body: CategoryBody(),
    );
  }
}
