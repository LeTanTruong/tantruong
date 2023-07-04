//items\h7_items2_page2_part1.dart
import 'dart:convert';
import 'package:flutter/material.dart';

class Items21 extends ChangeNotifier {
  int id;
  String overview;
  String poster_path;

  Items21({
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

  factory Items21.fromMap(Map<String, dynamic> map) {
    return Items21(
      id: map['id'] as int,
      overview: map['overview'] as String,
      poster_path: map['poster_path'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Items21.fromJson(String source) =>
      Items21.fromMap(json.decode(source) as Map<String, dynamic>);
}
