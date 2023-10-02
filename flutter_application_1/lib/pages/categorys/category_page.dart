import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/categorys/category_body.dart';

class CategoryPage extends StatelessWidget {
  static const routerName = "/CategoryPage.routerName";
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> arg =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(arg['name']),
      ),
      ////CategoryBody
      body: CategoryBody(),
    );
  }
}
