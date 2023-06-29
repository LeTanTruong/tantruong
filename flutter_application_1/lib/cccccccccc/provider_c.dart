// import 'dart:async';

// import 'package:flutter/cupertino.dart';

// class ProviderC extends ChangeNotifier {
//   late StreamController<int> _streamController;
//   int number = 60;
//   Timer? timer;
//   ProviderC() {
//     _streamController = StreamController<int>.broadcast();
//   }
//   Stream<int> get countStream => _streamController.stream;
//   Future<void> getNumber() async {
//     timer?.cancel();
//     timer = Timer.periodic(const Duration(seconds: 1), (timer) {
//       number = number = -1;
//       _streamController.add(number);
//     });

//     @override
//     void dispose() {
//       // TODO: implement dispose

//       super.dispose();
//       _streamController.close();
//     }
//   }
// }
