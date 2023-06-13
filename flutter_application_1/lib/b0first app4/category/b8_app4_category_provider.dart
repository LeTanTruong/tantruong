//b8_app4_category_provider.dart
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/b0first%20app4/category/b7_app4_category_model.dart';
import 'package:http/http.dart' as http; ////11119 ChangeNotifier

class CategoryProvider extends ChangeNotifier {
  ////11117 ChangeNotifier

  Future<List<Category>> getCategory() async {
    ////11119 ChangeNotifier

    const url =
        'https://apiforlearning.zendvn.com/api/mobile/categories?limit=4';

    try {
      final response = await http.get(Uri.parse(url));
      final jsonData = jsonDecode(response.body);
      List<Category> data = List<Category>.from(
          jsonData.map((cate) => Category.fromJson(jsonEncode(cate)))).toList();
      return data;
    } catch (e) {
      return Future.error(e);
    }
  }
}
