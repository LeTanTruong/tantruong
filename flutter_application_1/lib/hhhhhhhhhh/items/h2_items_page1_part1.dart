//items\h2_items_page1_part1.dart
import 'dart:convert';
import 'package:flutter/material.dart';

class Items extends ChangeNotifier {
  int id;
  String overview;
  String poster_path;

  Items({
    required this.id,
    required this.overview,
    required this.poster_path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'overview': overview,
      'poster_path': poster_path,
    };
  }

  factory Items.fromMap(Map<String, dynamic> map) {
    return Items(
      id: map['id'] as int,
      overview: map['overview'] as String,
      poster_path: map['poster_path'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Items.fromJson(String source) =>
      Items.fromMap(json.decode(source) as Map<String, dynamic>);
}
