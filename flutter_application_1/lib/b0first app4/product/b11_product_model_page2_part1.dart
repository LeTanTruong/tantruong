//product\b11_product_model_page2_part1.dart
import 'dart:convert';
import 'package:flutter/material.dart';

class Product extends ChangeNotifier {
  int id;
  String name;
  String image;
  int price;
  int price_sale_off;
  int rating;
  bool special;
  String summary;
  String description;
  bool is_new;
  int category_id;

  Product({
    required this.id,
    required this.name,
    required this.image,
    required this.price,
    required this.price_sale_off,
    required this.rating,
    required this.special,
    required this.summary,
    required this.description,
    required this.is_new,
    required this.category_id,
  });

  ///từ thằng Json sinh ra
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'image': image,
      'price': price,
      'price_sale_off': price_sale_off,
      'rating': rating,
      'special': special,
      'summary': summary,
      'description': description,
      'is_new': is_new,
      'category_id': category_id,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map['id'] as int,
      name: map['name'] as String,
      image: map['image'] as String,
      price: map['price'] as int,
      price_sale_off: map['price_sale_off'] as int,
      rating: map['rating'] as int,
      special: map['special'] as bool,
      summary: map['summary'] as String,
      description: map['description'] as String,
      is_new: map['is_new'] as bool,
      category_id: map['category_id'] as int,
    );
  }

  String toJson() => json.encode(toMap());
  factory Product.fromJson(String source) =>
      Product.fromMap(json.decode(source) as Map<String, dynamic>);
}
