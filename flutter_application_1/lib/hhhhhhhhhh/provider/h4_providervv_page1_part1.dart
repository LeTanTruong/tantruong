//provider\h4_providervv_page1_part1.dart
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/hhhhhhhhhh/items/h2_items_page1_part1.dart';
import 'package:flutter_application_1/hhhhhhhhhh/items/h7_items2_page2_part1.dart';
import 'package:flutter_application_1/hhhhhhhhhh/provider/h3_provider_page1_part1.dart';

class ProvidervvPage1Part1 extends ChangeNotifier {
  Future<List<Items>> getAll() async {
    try {
      List<Items> data = await ProviderPage1Part1().getListItems();
      return data;
    } catch (e) {
      return Future.error(e);
    }
  }

  /////////////////////////////////////////////////////////////////////////////////////////////
  Future<List<Items21>> getAll21(int id) async {
    try {
      List<Items21> data = await ProviderPage1Part1().getListItems21(id);
      return data;
    } catch (e) {
      return Future.error(e);
    }
  }
}
