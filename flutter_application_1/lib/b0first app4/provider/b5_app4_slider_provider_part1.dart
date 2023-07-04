//\b0first\slider\b5_app4_slider_provider.dart
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/b0first%20app4/slider/b4_app4_slider_model_part1.dart';
import 'package:http/http.dart' as http; ////1116 http

class SliderProvider extends ChangeNotifier {
  ////1114 ChangeNotifier
  Future<List<Sli>> getSlider() async {
    ////1116 http
    const url =
        'https://apiforlearning.zendvn.com/api/mobile/sliders?limit=4'; //hình slider

    try {
      final response = await http.get(Uri.parse(url)); ////1116 http

      final jsonData = jsonDecode(response.body); ////11110 jsonDecode
      List<Sli> data = List<Sli>.from(
          jsonData.map((slider) => Sli.fromJson(jsonEncode(slider)))).toList();
      return data;
    } catch (e) {
      return Future.error(e);
    } //try xử lý dữ liệu //catch xử lý lỗi
    ////11110 jsonDecode
  }
}
