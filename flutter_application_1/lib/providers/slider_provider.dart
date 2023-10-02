import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/silder_model.dart';
import 'package:http/http.dart' as http;

class SliderProvider extends ChangeNotifier {
  Future<List<Sli>> getSlider() async {
    const url =
        'https://apiforlearning.zendvn.com/api/mobile/sliders?limit=4'; //hình slider
    //"https://apiforlearning.zendvn.com/api/mobile/sliders?offset=4";
    try {
      final response = await http.get(Uri.parse(url));
      final jsonData = jsonDecode(response.body);
      List<Sli> data = List<Sli>.from(
          jsonData.map((slider) => Sli.fromJson(jsonEncode(slider)))).toList();
      return data;
    } catch (e) {
      return Future.error(e);
    }
  }
}
