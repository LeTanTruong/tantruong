import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/model_product.dart';
import 'package:http/http.dart' as http;

class ProductProvider extends ChangeNotifier {
  Future<List<ModelProduct>> getAll() async {
    const url =
        'https://apiforlearning.zendvn.com/api/mobile/products?offset=0&sortBy=id&order=asc';
    try {
      final response = await http.get(Uri.parse(url));
      final jsonData = jsonDecode(response.body);
      List<ModelProduct> data = List<ModelProduct>.from(
          jsonData.map((i) => ModelProduct.fromJson(jsonEncode(i)))).toList();
      return data;
    } catch (e) {
      return Future.error(e);
    }
  }

  //2/////////////////////////////////////////////////////////////////////////////////////////////////////
  Future<ModelProduct> getProductById(int id) async {
    final url = 'https://apiforlearning.zendvn.com/api/mobile/products/$id';
    try {
      final response = await http.get(Uri.parse(url));
      final jsonData = jsonDecode(response.body);
      ModelProduct data = ModelProduct.fromJson(jsonEncode(jsonData));
      return data;
    } catch (e) {
      return Future.error(e);
    }
  }
}
