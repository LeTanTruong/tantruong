import 'dart:convert';

import 'package:flutter/material.dart';

class Girdview extends ChangeNotifier {
  ////3
  String id;
  String name;
  String image;
  Girdview({
    required this.id,
    required this.name,
    required this.image,
  });

  ///từ thằng Json sinh ra
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'image': image,
    };
  }

  factory Girdview.fromMap(Map<String, dynamic> map) {
    return Girdview(
        id: map['id'] as String,
        name: map['name'] as String,
        image: map['image'] as String);
  }

  String toJson() => json.encode(toMap());
  factory Girdview.fromJson(String source) =>
      Girdview.fromMap(json.decode(source) as Map<String, dynamic>);
}
