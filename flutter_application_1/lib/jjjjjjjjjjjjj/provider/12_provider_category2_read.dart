import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; //rootBundle
import 'dart:convert';

import 'package:flutter_application_1/jjjjjjjjjjjjj/category/j11_category2_json.dart';

class ProviderCategory2 extends ChangeNotifier {
  ////3
  List<Category2> _items = [];
  List<Category2> get items => [..._items];

  Future<List<Category2>> readJson() async {
    final String response =
        await rootBundle.loadString('assets/json/giaodien.json');
    final dataDecode = await json.decode(response);
    List<Category2> data = List<Category2>.from(
        dataDecode.map((i) => Category2.fromJson(jsonEncode(i))));
    _items = data;
    //print(data);
    return data;
//notifyListeners();
  }
}
