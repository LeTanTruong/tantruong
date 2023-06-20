import 'dart:convert';

import 'package:flutter/material.dart';

class Product extends ChangeNotifier {
  ////2
  int id;
  String link;
  String name;
  Product({
    required this.id,
    required this.link,
    required this.name,
  });

  ///từ thằng Json sinh ra
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'link': link,
      'name': name,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
        id: map['id'] as int,
        link: map['link'] as String,
        name: map['name'] as String);
  }

  String toJson() => json.encode(toMap());
  factory Product.fromJson(String source) =>
      Product.fromMap(json.decode(source) as Map<String, dynamic>);
}
