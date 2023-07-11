import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/wwwwwwwwww/provider/w_provider_repository_home.dart';
import 'package:flutter_application_1/wwwwwwwwww/w_model/w_model_home.dart';

class ProviderHome extends ChangeNotifier {
  List<ModelHome> listModelHome = []; ////4
  late StreamController<List<ModelHome>> _streamController;
  ProviderHome() {
    _streamController = StreamController<List<ModelHome>>.broadcast();
  }

  Stream<List<ModelHome>> get ModelHomeStream => _streamController.stream; ////4
////////////////////////////////////////////////////////////////////////////////////////////////////////
  void getAll({page = 1}) async {
    ////5
    try {
      if (page == 1) {
        List<ModelHome> listModelHome =
            await ProviderRepositoryHome().getListModelHome(page); ////7
        _streamController.add(listModelHome);
      } else {
        List<ModelHome> listModelHome =
            await ProviderRepositoryHome().getListModelHome(page); ////7
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
