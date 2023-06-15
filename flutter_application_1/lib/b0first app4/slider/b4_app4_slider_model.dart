//slider\b4_app4_slider_model.dart
import 'dart:convert';

class Sli {
  ////1113 Sli
  int id;
  String name;
  String image;
  Sli({
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

  factory Sli.fromMap(Map<String, dynamic> map) {
    return Sli(
        id: map['id'] as int,
        name: map['name'] as String,
        image: map['image'] as String);
  }

  String toJson() => json.encode(toMap());
  factory Sli.fromJson(String source) =>
      Sli.fromMap(json.decode(source) as Map<String, dynamic>);
}