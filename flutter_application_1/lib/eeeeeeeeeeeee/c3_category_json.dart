// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';

class Category extends ChangeNotifier {
  String id;
  String title;
  String view;
  String intro;
  Category({
    required this.id,
    required this.title,
    required this.view,
    required this.intro,
  });

  ///từ thằng Json sinh ra
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'view': view,
      'intro': intro,
    };
  }

  factory Category.fromMap(Map<String, dynamic> map) {
    return Category(
      id: map['id'] as String,
      title: map['title'] as String,
      view: map['view'] as String,
      intro: map['intro'] as String,
    );
  }

  String toJson() => json.encode(toMap());
  factory Category.fromJson(String source) =>
      Category.fromMap(json.decode(source) as Map<String, dynamic>);
}
