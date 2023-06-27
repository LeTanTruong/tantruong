//product\f8_product2_json.dart
// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'package:flutter/material.dart';

class Product2 extends ChangeNotifier {
  int id;
  String title;
  String description;
  String link;

  Product2({
    required this.id,
    required this.title,
    required this.description,
    required this.link,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'description': description,
      'link': link,
    };
  }

  factory Product2.fromMap(Map<String, dynamic> map) {
    return Product2(
      id: map['id'] as int,
      title: map['title'] as String,
      description: map['description'] as String,
      link: map['link'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Product2.fromJson(String source) =>
      Product2.fromMap(json.decode(source) as Map<String, dynamic>);
} ////1 json