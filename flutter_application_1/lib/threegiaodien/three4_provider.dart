//lib\threegiaodien\three4_provider.dart
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/threegiaodien/three3_item.dart';

class Three4Provider extends ChangeNotifier {
  List<Item> _items = [];
  int _countItemFavorite = 0; ////4442 đếm số lượt yêu thích

  List<Item> get items {
    return [..._items];
  }

  int get countItemFavorite {
    ////4442 đếm số lượt yêu thích
    return _countItemFavorite; ////4442 đếm số lượt yêu thích
  }

  int _favorite = 0; ////1112 bages
  int get favorite => _favorite; ////1112 bages
  void updateFavorite() {
    _favorite++; ////1115 bages
    notifyListeners(); ////1115 bages
  } ////1115 bages

  void handleCountItemFav() {
    ////4443 đếm số lượt yêu thích
    _countItemFavorite = _items
        .where((element) => element.isFavorite)
        .length; ////4443 đếm số lượt yêu thích
    notifyListeners();
  }

  void readJson() async {
    final String response =
        await rootBundle.loadString('assets/json/giaodien.json');
    final parsedList = await json.decode(response);
    List<Item> listData = List<Item>.from(
        parsedList.map((data) => Item.fromJson(jsonEncode(data)))).toList();
    _items = listData;
    notifyListeners();
  }
}
