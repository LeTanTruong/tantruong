import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/threegiaodien/three3_item.dart';

class Three4Provider extends ChangeNotifier {
  List<Item> _items = [];
  List<Item> get items {
    return [..._items];
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
