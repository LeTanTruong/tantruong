import 'dart:async';

import 'package:flutter/cupertino.dart';

class CategoryProvider extends ChangeNotifier {
  late StreamController<int> _streamController;
  int number = 60;
  Timer? timer;
  void resetTimer() => number = 60;
  //void initialTimer() => number = 60;
  CategoryProvider() {
    _streamController = StreamController<int>.broadcast();
  }

  Stream<int> get countStream => _streamController.stream;

  void add() {
    timer?.cancel();
    timer = Timer.periodic(const Duration(seconds: 0), (_) {
      //  if (number > 0) {
      number = number - 1;
      _streamController.add(number);
      //  }

      //seconds: 1
      //  number =  number - 1 ;
      //seconds =--;
      //  _streamController.add(number);
    });
  }

  void stoptimer({bool reset = true}) {
    timer?.cancel();
    if (reset) {
      resetTimer();
    }
  }

  // void backtotheoriginal({bool initial = true}) {
  //   timer?.cancel();
  //   if (initial) {
  //     initialTimer();
  //   }
  // }

  void reset() {
    timer?.cancel();
    timer = Timer.periodic(const Duration(seconds: 0), (_) {
      //  number = number - 1;
      //  _streamController.add(number);
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose

    super.dispose();
    _streamController.close();
  }
}
