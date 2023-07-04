// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/b0first%20app4/category/b7_app4_category_model_page1_part2.dart';
// import 'package:http/http.dart' as http;

// class CategoryProvider extends ChangeNotifier {
//   Future<List<Category>> getCategory() async {
//     const url =
//         'https://apiforlearning.zendvn.com/api/mobile/categories?limit=4';

//     try {
//       final response = await http.get(Uri.parse(url));
//       final jsonData = jsonDecode(response.body);
//       List<Category> data = List<Category>.from(
//           jsonData.map((cate) => Category.fromJson(jsonEncode(cate)))).toList();
//       return data;
//     } catch (e) {
//       return Future.error(e);
//     }
//   }
// }

//////////////////////////////////////////////////////////////////////////////////////
//b8_app4_category_provider.dart
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/b0first%20app4/category/b7_app4_category_model_page1_part2.dart';
import 'package:flutter_application_1/b0first%20app4/product/b11_product_model_page2_part1.dart';

import 'package:http/http.dart' as http;

class CategoryProvider extends ChangeNotifier {
  Future<List<Category>> getCategory() async {
    const url =
        'https://apiforlearning.zendvn.com/api/mobile/categories'; //hình category
    try {
      final response = await http.get(Uri.parse(url));
      final jsonData = jsonDecode(response.body);
      List<Category> data = List<Category>.from(
          jsonData.map((i) => Category.fromJson(jsonEncode(i)))).toList();
      return data;
    } catch (e) {
      return Future.error(e);
    } //try xử lý dữ liệu //catch xử lý lỗi
  }

  Future<List<Product>> getProductCategory(int id) async {
    final url = //
        'https://apiforlearning.zendvn.com/api/mobile/categories/$id/products';
//hình category
    final uri = Uri.parse(url); //\\
    final finalUri = uri.replace(queryParameters: {}); //"special": "true" //\\

    try {
      final response = await http.get(finalUri);
      final jsonData = jsonDecode(response.body);
// print(jsonData);
      List<Product> data = List<Product>.from(
          jsonData.map((i) => Product.fromJson(jsonEncode(i)))).toList();
      return data;
    } catch (e) {
      return Future.error(e);
    } //try xử lý dữ liệu //catch xử lý lỗi
  }
}
