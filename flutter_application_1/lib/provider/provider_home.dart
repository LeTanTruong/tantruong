import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/provider_repository_home.dart';
import 'package:flutter_application_1/models/model_home.dart';

class ProviderHome extends ChangeNotifier {
  List<ModelHome> listModelHome = [];
  late StreamController<List<ModelHome>> _streamController;
  ProviderHome() {
    _streamController = StreamController<List<ModelHome>>.broadcast();
  }

  Stream<List<ModelHome>> get ModelHomeStream => _streamController.stream;
////////////////////////////////////////////
  void getAll({page = 1}) async {
    try {
      if (page == 1) {
        List<ModelHome> listModelHome =
            await ProviderRepositoryHome().getListModelHome(page);
        _streamController.add(listModelHome);
      } else {
        List<ModelHome> listModelHome =
            await ProviderRepositoryHome().getListModelHome(page);
        listModelHome = List.of(listModelHome)..addAll(listModelHome);
        _streamController.add(listModelHome);
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
  }
}
