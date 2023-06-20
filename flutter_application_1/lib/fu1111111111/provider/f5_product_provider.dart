import 'dart:convert';
//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/fu1111111111/product/f4_product_json.dart';
import 'package:http/http.dart' as http;

class ProviderProduct extends ChangeNotifier {
  Future<List<Product>> getAll() async {
    const url =
        'https://apiforlearning.zendvn.com/api/categories_news?limit=15&sort_by=id&sort_dir=asc'; //hình category

    try {
      final response = await http.get(Uri.parse(url));
      final jsonData = jsonDecode(response.body);
      List<Product> data = List<Product>.from(
          jsonData.map((cate) => Product.fromJson(jsonEncode(cate)))).toList();
      return data;
    } catch (e) {
      return Future.error(e);
    } //try xử lý dữ liệu //catch xử lý lỗi
  }
}
