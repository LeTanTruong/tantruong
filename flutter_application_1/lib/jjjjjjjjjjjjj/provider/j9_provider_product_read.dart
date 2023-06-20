import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; //rootBundle
import 'dart:convert';

import 'package:flutter_application_1/jjjjjjjjjjjjj/product/j8_product_json.dart';

class ProviderProduct extends ChangeNotifier {
  ////3
  List<Product> _items = [];
  List<Product> get items => [..._items];

  Future<List<Product>> readJson() async {
    final String response = await rootBundle
        .loadString('assets/json/doc.json'); //assets/json/app3_product.json
    final dataDecode = await json.decode(response);
    List<Product> data = List<Product>.from(
        dataDecode.map((i) => Product.fromJson(jsonEncode(i))));
    _items = data;
    //print(data);
    return data;
//notifyListeners();
  }
}
