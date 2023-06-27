// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/widgets.dart';

class Category2 extends ChangeNotifier {
  String id;
  String name;
  String image;
  //String link;
  Category2({
    required this.id,
    required this.name,
    required this.image,
    //required this.link,
  });

  ///từ thằng Json sinh ra
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'image': image,
      //'link': link,
    };
  }

  factory Category2.fromMap(Map<String, dynamic> map) {
    return Category2(
      id: map['id'] as String,
      name: map['name'] as String,
      image: map['image'] as String,
      //link: map['link'] as String,
    );
  }

  String toJson() => json.encode(toMap());
  factory Category2.fromJson(String source) =>
      Category2.fromMap(json.decode(source) as Map<String, dynamic>);
}
