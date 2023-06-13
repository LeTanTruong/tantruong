//category\b9_app4_category.dart
import 'package:flutter/material.dart';
import 'b10_app4_category_body.dart';

class CategoryPage extends StatelessWidget {
  static const routerName = 'CategoryPage.routerName'; ////11128 chuyển trang
  // '/category' trong static
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> arg = ModalRoute.of(context)!.settings.arguments
        as Map<String, dynamic>; ////11129 chuyển trang
    print(arg); ////11129 chuyển trang
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(arg['name']), ////11129 chuyển trang
      ),
      body: CategoryBody(),
    );
  }
}
