import 'package:flutter/cupertino.dart';

class Mot2Provider extends ChangeNotifier {
  int number = 0;
  void increment() {
    number++;
    notifyListeners();
  }

  void reduce() {
    number--;
    notifyListeners();
  }
}
