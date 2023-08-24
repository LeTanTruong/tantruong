import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/model_product.dart';
import 'package:http/http.dart' as http;

class ProductProvider extends ChangeNotifier {
  //List<ModelProduct> all = [];
  Future<List<ModelProduct>> getAll() async {
    const url =
        'https://apiforlearning.zendvn.com/api/mobile/products?offset=0&sortBy=id&order=asc'; //hình category

    try {
      final response = await http.get(Uri.parse(url));
      final jsonData = jsonDecode(response.body);
      List<ModelProduct> data = List<ModelProduct>.from(
          jsonData.map((i) => ModelProduct.fromJson(jsonEncode(i)))).toList();
      //all = data;
      return data;
    } catch (e) {
      return Future.error(e);
    }
  }

  //2/////////////////////////////////////////////////////////////////////////////////////////////////////
  Future<ModelProduct> getProductById(int id) async {
    ////5
    final url =
        'https://apiforlearning.zendvn.com/api/mobile/products/$id'; //hình category

    try {
      final response = await http.get(Uri.parse(url));
      final jsonData = jsonDecode(response.body);
// print(jsonData);
      ModelProduct data = ModelProduct.fromJson(jsonEncode(jsonData));
      return data;
    } catch (e) {
      return Future.error(e);
    }
  } ////5
}
