//lib\a0_next_page\gridview\gridview_provider_a5.dart
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'gridview_json_a4.dart';
import 'dart:convert';

class GridviewProvider extends ChangeNotifier {
  ////4
  Future<List<Girdview>> getGirdview() async {
    const url =
        'https://apiforlearning.zendvn.com/api/categories_news?offset=0&limit=11&sort_by=id&sort_dir=asc';

    try {
      final response = await http.get(Uri.parse(url));

      final jsonData = jsonDecode(response.body); ////final jsonData
      List<Girdview> data = List<Girdview>.from(
          jsonData.map((cate) => Girdview.fromJson(jsonEncode(cate)))).toList();
      return data;
    } catch (e) {
      return Future.error(e);
    } //try xử lý dữ liệu //catch xử lý lỗi
  }
}
