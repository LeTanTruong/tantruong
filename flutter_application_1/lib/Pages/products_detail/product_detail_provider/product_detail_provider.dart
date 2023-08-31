import 'package:flutter/cupertino.dart';

class ProductDetailProvider extends ChangeNotifier {
  int number = 0;
  void increment() {
    //tăng
    number++;
    notifyListeners();
  }

  void reduce() {
    //giảm
    number--;
    notifyListeners();
  }
}
