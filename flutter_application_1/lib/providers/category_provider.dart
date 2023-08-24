import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/category_model.dart';
import 'package:flutter_application_1/models/product_model.dart';
import 'package:http/http.dart' as http;

class CategoryProvider extends ChangeNotifier {
  Future<List<Category>> getCategory() async {
    const url = 'https://apiforlearning.zendvn.com/api/mobile/categories';
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

  Future<List<Product>> getProductCategory(int id) async {
    final url =
        'https://apiforlearning.zendvn.com/api/mobile/categories/$id/products';
    final uri = Uri.parse(url);
    final finalUri = uri.replace(queryParameters: {}); //"special": "true"

    try {
      final response = await http.get(finalUri);
      final jsonData = jsonDecode(response.body);
      List<Product> data = List<Product>.from(
              jsonData.map((Product) => Product.fromJson(jsonEncode(Product))))
          .toList();
      return data;
    } catch (e) {
      return Future.error(e);
    }
  }
}
