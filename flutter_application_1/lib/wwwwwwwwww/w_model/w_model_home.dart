import 'dart:convert';
import 'package:flutter/material.dart';

class ModelHome extends ChangeNotifier {
  ////2
  int id;
  String overview;
  String poster_path;

  ModelHome({
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

  factory ModelHome.fromMap(Map<String, dynamic> map) {
    return ModelHome(
      id: map['id'] as int,
      overview: map['overview'] as String,
      poster_path: map['poster_path'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ModelHome.fromJson(String source) =>
      ModelHome.fromMap(json.decode(source) as Map<String, dynamic>);
} ////2
