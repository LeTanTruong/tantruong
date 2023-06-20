//repositorires\item_repository_5.dart
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/fu1111111111/models/item_model.dart';
import 'package:http/http.dart' as http;

class ItemRepository extends ChangeNotifier {
  Future<List<ItemModel>> getAll() async {
    const url =
        'https://apiforlearning.zendvn.com/api/articles?offset=0&limit=10&sort_by=id&sort_dir=desc';

    try {
      final response = await http.get(Uri.parse(url));
      final jsonData = jsonDecode(response.body);
      List<ItemModel> data = List<ItemModel>.from(
          jsonData.map((i) => ItemModel.fromJson(jsonEncode(i)))).toList();
      return data;
    } catch (e) {
      return Future.error(Exception('no datad'));
    }
  }
}
