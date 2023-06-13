import 'dart:convert';

import 'package:flutter/widgets.dart';

class Category extends ChangeNotifier {
  String id;
  String name;
  String image;
  //String radioButtonUnchecked;

  bool isRadioButtonUnchecked = false;

  Category({
    required this.id,
    required this.name,
    required this.image,
    //  required this.radioButtonUnchecked,
  });

  void toggleIsRadioButtonUnchecked() {
    isRadioButtonUnchecked = !isRadioButtonUnchecked;
    // radioButtonUnchecked = isRadioButtonUnchecked
    //     ? (int.parse(radioButtonUnchecked) + 1).toString()
    //     : (int.parse(radioButtonUnchecked) - 1).toString();
    // notifyListeners();
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'image': image,
    };
  }

  factory Category.fromMap(Map<String, dynamic> map) {
    return Category(
      id: map['id'] as String,
      name: map['name'] as String,
      image: map['image'] as String,
      //  radioButtonUnchecked: map['radioButtonUnchecked'] as String,
    );
  }

  String toJson() => json.encode(toMap());
  factory Category.fromJson(String source) =>
      Category.fromMap(json.decode(source) as Map<String, dynamic>);
}