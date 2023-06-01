import 'dart:convert';
import 'package:flutter/material.dart';

class Item extends ChangeNotifier {
  ////2228 json
  int id;
  String name;
  String image;
  String description;
  bool isStar = false;
  bool isFavorite = false; ////3331 nhấn 1 lần ra đỏ nhấn 2 lần thì bỏ
  Item({
    required this.id,
    required this.name,
    required this.image,
    required this.description,
  });
  void toggleIsStar() {
    isStar = !isStar;
    notifyListeners();
  }

  void toggleIsFavorite() {
    ////3332 nhấn 1 lần ra đỏ nhấn 2 lần thì bỏ
    isFavorite = !isFavorite; ////3332 nhấn 1 lần ra đỏ nhấn 2 lần thì bỏ
    notifyListeners();
  }

  ///từ thằng Json sinh ra
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'image': image,
      'description': description,
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map['id'] as int,
      name: map['name'] as String,
      image: map['image'] as String,
      description: map['description'] as String,
    );
  }

  String toJson() => json.encode(toMap());
  factory Item.fromJson(String source) =>
      Item.fromMap(json.decode(source) as Map<String, dynamic>);
}
