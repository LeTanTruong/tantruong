//r4_items.dart
import 'dart:convert';

import 'package:flutter/material.dart';

class ItemHome extends ChangeNotifier {
  int id;
  String overview;
  String poster_path;
  String original_title;

  ItemHome({
    required this.id,
    required this.overview,
    required this.poster_path,
    required this.original_title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'overview': overview,
      'poster_path': poster_path,
      'original_title': original_title,
    };
  }

  factory ItemHome.fromMap(Map<String, dynamic> map) {
    return ItemHome(
      id: map['id'] as int,
      overview: map['overview'] as String,
      poster_path: map['poster_path'] as String,
      original_title: map['original_title'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ItemHome.fromJson(String source) =>
      ItemHome.fromMap(json.decode(source) as Map<String, dynamic>);
} ////2
