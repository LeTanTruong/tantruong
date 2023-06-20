import 'dart:convert';

import 'package:flutter/material.dart';

class Product extends ChangeNotifier {
  int id;
  String title;
//  String view;
  String link;
  String description;
  Product({
    required this.id,
    required this.title,
//    required this.view,
    required this.link,
    required this.description,
  });

  ///từ thằng Json sinh ra
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'thumb': link,
      'description': description,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map['id'] as int,
      title: map['title'] as String,
      link: map['link'] as String,
      description: map['description'] as String,
    );
  }

  String toJson() => json.encode(toMap());
  factory Product.fromJson(String source) =>
      Product.fromMap(json.decode(source) as Map<String, dynamic>);
}
