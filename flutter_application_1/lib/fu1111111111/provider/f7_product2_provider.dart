import 'dart:convert';
//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/fu1111111111/product/f8_product2_json.dart';
import 'package:http/http.dart' as http;

class ProviderProduct2 extends ChangeNotifier {
  Future<List<Product2>> getAll() async {
    const url =
        'https://apiforlearning.zendvn.com/api/articles?offset=0&limit=10&sort_by=id&sort_dir=desc'; //hình category

    try {
      final response = await http.get(Uri.parse(url));
      final jsonData = jsonDecode(response.body);
      List<Product2> data = List<Product2>.from(
          jsonData.map((cate) => Product2.fromJson(jsonEncode(cate)))).toList();
      return data;
    } catch (e) {
      return Future.error(e);
    } //try xử lý dữ liệu //catch xử lý lỗi
  }
}
