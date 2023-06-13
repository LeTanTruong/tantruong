//category\b7_app4_category_model.dart
import 'dart:convert';

class Category {
  ////11116 Category
  int id;
  String name;
  String image;
  Category({
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

  factory Category.fromMap(Map<String, dynamic> map) {
    return Category(
        id: map['id'] as int,
        name: map['name'] as String,
        image: map['image'] as String);
  }

  String toJson() => json.encode(toMap());
  factory Category.fromJson(String source) =>
      Category.fromMap(json.decode(source) as Map<String, dynamic>);
}
