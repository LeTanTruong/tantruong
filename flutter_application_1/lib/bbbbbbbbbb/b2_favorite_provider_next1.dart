//bbbbbbbbbb\b2_favorite_provider_next1.dart
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/bbbbbbbbbb/b3_category_json_next1.dart';

class FavoriteProviderNext1 extends ChangeNotifier {
  List<Category> _items = [];
  List<Category> get items => [..._items];

  // void toogleFavorite(String item) {
  //   final isExist = _items.contains(item);
  //   if (isExist) {
  //     _items.remove(item);
  //   } else {
  //     _items.add(item as Category);
  //   }
  //   notifyListeners();
  // }

  // bool isExist(String item) {
  //   final isExist = _items.contains(item);
  //   return isExist;
  // }

  // void clearFavorite() {
  //   _items = [];
  //   notifyListeners();
  // }

  Future<List<Category>> readJson() async {
    final String response =
        await rootBundle.loadString('assets/json/giaodien.json');
    final dataDecode = await json.decode(response);
    List<Category> data = List<Category>.from(
        dataDecode.map((i) => Category.fromJson(jsonEncode(i))));
    _items = data;
    return data;
  }
}
