//r5-provider_homeinhome.dart
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/items/r_item_home.dart';
import 'package:flutter_application_1/provider/r_provider_home.dart';

class ProviderHomeinHome extends ChangeNotifier {
  List<ItemHome> listItemHome = []; ////4
  late StreamController<List<ItemHome>> _streamController;
  ProviderHomeinHome() {
    _streamController = StreamController<List<ItemHome>>.broadcast();
  }

  Stream<List<ItemHome>> get ItemHomeStream => _streamController.stream; ////4

  void getAll({page = 1}) async {
    try {
      if (page == 1) {
        List<ItemHome> listItemHome =
            await ProviderHome().getListItemHome(page);
        _streamController.add(listItemHome);
      } else {
        List<ItemHome> listItemHome =
            await ProviderHome().getListItemHome(page);
        listItemHome = List.of(listItemHome)..addAll(listItemHome);
        _streamController.add(listItemHome);
      }
    } catch (e) {
      return Future.error(e);
    }

    @override
    void dispose() {
      // TODO: implement dispose
      _streamController.close();
      super.dispose();
    }
  } ////5
}
