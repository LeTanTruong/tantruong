import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; //rootBundle
import 'dart:convert';

import 'package:flutter_application_1/jjjjjjjjjjjjj%20json/category/j5_category_json.dart';

class ProviderCategory extends ChangeNotifier {
  ////3
  List<Category> _items = [];
  List<Category> get items => [..._items];

  Future<List<Category>> readJson() async {
    final String response = await rootBundle
        .loadString('assets/json/doc.json'); //assets/json/app3_product.json
    final dataDecode = await json.decode(response);
    List<Category> data = List<Category>.from(
        dataDecode.map((i) => Category.fromJson(jsonEncode(i))));
    _items = data;
    return data;
//notifyListeners();
  }
}
