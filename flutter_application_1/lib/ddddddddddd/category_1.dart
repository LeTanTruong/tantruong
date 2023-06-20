import 'dart:convert';

import 'package:flutter/material.dart';

class Category extends ChangeNotifier {
  String id;
  String title;
  String intro;
  String image;
  Category({
    required this.id,
    required this.title,
    required this.intro,
    required this.image,
  });

  ///từ thằng Json sinh ra
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'intro': intro,
      'image': image,
    };
  }

  factory Category.fromMap(Map<String, dynamic> map) {
    return Category(
      id: map['id'] as String,
      title: map['title'] as String,
      intro: map['intro'] as String,
      image: map['image'] as String,
    );
  }

  String toJson() => json.encode(toMap());
  factory Category.fromJson(String source) =>
      Category.fromMap(json.decode(source) as Map<String, dynamic>);
}
