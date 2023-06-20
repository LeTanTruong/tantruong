// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';

class Category extends ChangeNotifier {
  int id;
  String title;
//  String view;
  String link;
  String description;
  Category({
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

  factory Category.fromMap(Map<String, dynamic> map) {
    return Category(
      id: map['id'] as int,
      title: map['title'] as String,
      link: map['link'] as String,
      description: map['description'] as String,
    );
  }

  String toJson() => json.encode(toMap());
  factory Category.fromJson(String source) =>
      Category.fromMap(json.decode(source) as Map<String, dynamic>);
}
