import 'dart:convert';
import 'package:flutter/material.dart';

class Category extends ChangeNotifier {
  String id;
  String name;
  String image;
  bool isFavorite = false;
  Category({
    required this.id,
    required this.name,
    required this.image,
  });

  void toogleIsFavorite() {
    isFavorite = !isFavorite;
    notifyListeners();
  }

  ///từ thằng Json sinh ra
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
        image: map['image'] as String);
  }

  String toJson() => json.encode(toMap());
  factory Category.fromJson(String source) =>
      Category.fromMap(json.decode(source) as Map<String, dynamic>);
}