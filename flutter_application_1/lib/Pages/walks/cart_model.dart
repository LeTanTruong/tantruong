import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

class CartModel extends ChangeNotifier {
  List shopItems = [
    //// [0]     [1]          [2]                         [3]
    {
      "name": "Cocacola",
      "price": "3.00",
      "image": "assets/images/4.jpg",
      "color": Color.fromARGB(255, 0, 174, 255)
    },
    //// [0]     [1]          [2]                         [3]
    {
      "name": "Banana",
      "price": "2.50",
      "image": "assets/images/2.jpg",
      "color": Color.fromARGB(255, 255, 15, 95)
    },

    //// [0]     [1]          [2]                         [3]
    {
      "name": "Chicken",
      "price": "10.00",
      "image": "assets/images/3.jpg",
      "color": Color(0xFFFF9000)
    },
    //// [0]     [1]          [2]                         [3]
    {
      "name": "apple",
      "price": "7.00",
      "image": "assets/images/1.jpg",
      "color": Color.fromARGB(255, 0, 162, 255)
    },
  ];
  List cartItems = [];

  ////add thêm sản phẩm
  void addItemToCart(int index) {
    cartItems.add(shopItems[index]);
    notifyListeners();
  }

////remove loại bỏ mặt hàng ra khỏi giỏ hàng
  void removeItemToFromCart(int index) {
    cartItems.removeAt(index);
    notifyListeners();
  }

  ////price mua sản phẩm , tính tổng, tính toán
  String calculateTotal() {
    double totalPrece = 0;
    for (int i = 0; i < cartItems.length; i++) {
      totalPrece += double.parse(cartItems[i]["price"]
          //[1]
          );
    }
    return totalPrece.toStringAsFixed(2);
  }
}



  // dynamic shopItems = [
  //   //// [0]     [1]          [2]                         [3]
  //   ["apple", "4.00", "assets/images/1.jpg", Color.fromARGB(255, 0, 255, 21)],
  //   //// [0]     [1]          [2]                         [3]
  //   [
  //     "Banana",
  //     "2.50",
  //     "assets/images/2.jpg",
  //     Color.fromARGB(255, 255, 251, 15)
  //   ],
  //   //// [0]     [1]          [2]                         [3]
  //   ["Chicken", "4.00", "assets/images/3.jpg", Color(0xFFFF9000)],
  //   //// [0]     [1]          [2]                         [3]
  //   [
  //     "Cocacola",
  //     "4.00",
  //     "assets/images/4.jpg",
  //     Color.fromARGB(255, 0, 162, 255)
  //   ],
  // ];