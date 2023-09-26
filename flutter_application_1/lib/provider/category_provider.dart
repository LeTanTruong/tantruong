import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CategoryProvider extends ChangeNotifier {
  List listCategory = [];

  Future<void> loadData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? dataString = prefs.getString('categoryList') ?? '';
    if (dataString.isNotEmpty) {
      listCategory = await jsonDecode(dataString);
    }
    notifyListeners();
  }

  void checkBox(int id) {
    if (listCategory.contains(id)) {
      listCategory.remove(id);
    } else {
      listCategory.add(id);
    }
    notifyListeners();
  }
}
