//lib\Pages\walks\walk_cart_model.dart
// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

class WalkCartModel extends ChangeNotifier {
  List shopItems = [
    ////
    {
      "name": "Cocacola",
      "price": "3.00",
      "image": "assets/images/4.jpg",
      "color": Color.fromARGB(255, 0, 174, 255),
      "title": "Công dụng Cocacola",
      "description":
          "Giúp làm phai màu tóc nhuộm không ưng ý ...\nXua đuổi côn trùng. ...\nLoại bỏ sơn cũ trên bề mặt kim loại. ...\nLoại bỏ vết gỉ sắt. ...\nLoại bỏ vết dầu mỡ trên quần áo. ...\nLoại bỏ vết máu bám trên quần áo.",
    },
    ////
    {
      "name": "Banana",
      "price": "2.50",
      "image": "assets/images/2.jpg",
      "color": Color.fromARGB(255, 255, 15, 95),
      "title": "Công dụng Banana",
      "description":
          "Cải thiện lượng đường trong máu. Chuối rất giàu chất xơ hòa tan. ...\nHỗ trợ sức khỏe tiêu hóa. Chất xơ mang lại nhiều lợi ích sức khỏe, bao gồm cải thiện tiêu hóa. ...\nHỗ trợ giảm cân. ...\nHỗ trợ sức khỏe tim mạch. ...\nGiàu chất chống oxy hóa. ...\nCải thiện độ nhạy insulin khi chưa chín. ...\nCải thiện sức khỏe thận.",
    },

////
    {
      "name": "Chicken",
      "price": "10.00",
      "image": "assets/images/3.jpg",
      "color": Color(0xFFFF9000),
      "title": "Công dụng Chicken",
      "description":
          "Hàm lượng protein cao. Thịt gà là nguồn cung cấp chất đạm dồi dào, ít chất béo. ...\nChống trầm cảm. Thịt gà có hàm lượng axit amin tryptophan rất cao. ...\nNgừa loãng xương. ...\nTốt cho sức khỏe tim mạch. ...\nGiàu phốt pho. ...\nCải thiện hệ miễn dịch, tăng cường trao đổi chất. ...\nTăng cường trao đổi chất. ...\nChống lại ung thư",
    },
    ////
    {
      "name": "apple",
      "price": "7.00",
      "image": "assets/images/1.jpg",
      "color": Color.fromARGB(255, 0, 162, 255),
      "title": "Công dụng apple",
      "description":
          "Tác dụng của táo hỗ trợ giảm cân. ...\nTáo có tác dụng gì đối với bệnh tiểu đường? ...\nGiảm tổn thương dạ dày. ...\nQuả táo giúp hỗ trợ vi khuẩn đường ruột. ...\nTác dụng của táo chống lại hen suyễn. ...\nTác dụng của táo đối với tim mạch. ...\nHỗ trợ ngăn ngừa ung thư ...\nTác dụng của quả táo bảo vệ não bộ",
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

  void removeItems() {
    cartItems = [];
    notifyListeners();
  }

  buy(List cartItems) {}
}
