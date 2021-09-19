import 'dart:convert';

class Ingredient {
  final String text;
  final int weight;
  final String foodCategory;
  final String foodId;
  final String image;
  Ingredient({
    this.text = '',
    this.weight = 0,
    this.foodCategory = '',
    this.foodId = '',
    this.image = '',
  });

  Map<String, dynamic> toMap() {
    return {
      'text': text,
      'weight': weight,
      'foodCategory': foodCategory,
      'foodId': foodId,
      'image': image,
    };
  }

  factory Ingredient.fromMap(Map<String, dynamic> map) {
    return Ingredient(
      text: map['text'] ?? '',
      weight: map['weight']?.toInt() ?? 0,
      foodCategory: map['foodCategory'] ?? '',
      foodId: map['foodId'] ?? '',
      image: map['image'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Ingredient.fromJson(String source) =>
      Ingredient.fromMap(json.decode(source));
}
