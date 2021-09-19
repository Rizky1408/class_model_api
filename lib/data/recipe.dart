import 'dart:convert';

import 'ingredient.dart';

class Recipe {
  final String uri;
  final String label;
  final String image;
  final String source;
  final String url;
  final String shareAs;
  final int yield;
  final List<String> dietLabels;
  final List<String> healthLabels;
  final List<String> cautions;
  final List<String> ingredientLines;
  final List<Ingredient> ingredients;
  final double calories;
  final double totalWeight;
  final int totalTime;
  Recipe({
    this.uri = '',
    this.label = '',
    this.image = '',
    this.source = '',
    this.url = '',
    this.shareAs = '',
    this.yield = 0,
    this.dietLabels = const [],
    this.healthLabels = const [],
    this.cautions = const [],
    this.ingredientLines = const [],
    this.ingredients = const [],
    this.calories = 0.0,
    this.totalWeight = 0.0,
    this.totalTime = 0,
  });

  Map<String, dynamic> toMap() {
    return {
      'uri': uri,
      'label': label,
      'image': image,
      'source': source,
      'url': url,
      'shareAs': shareAs,
      'yield': yield,
      'dietLabels': dietLabels,
      'healthLabels': healthLabels,
      'cautions': cautions,
      'ingredientLines': ingredientLines,
      // 'ingredients': ingredients?.map((x) => x.toMap())?.toList(),
      'calories': calories,
      'totalWeight': totalWeight,
      'totalTime': totalTime,
    };
  }

  factory Recipe.fromMap(Map<String, dynamic> map) {
    return Recipe(
      uri: map['uri'] ?? '',
      label: map['label'] ?? '',
      image: map['image'] ?? '',
      source: map['source'] ?? '',
      url: map['url'] ?? '',
      shareAs: map['shareAs'] ?? '',
      yield: map['yield']?.toInt() ?? 0,
      dietLabels: List<String>.from(map['dietLabels'] ?? const []),
      healthLabels: List<String>.from(map['healthLabels'] ?? const []),
      cautions: List<String>.from(map['cautions'] ?? const []),
      ingredientLines: List<String>.from(map['ingredientLines'] ?? const []),
      // ingredients: List<Ingredient>.from(map['ingredients']?.map((x) => Ingredient.fromMap(x) ?? Ingredient()) ?? const []),
      calories: map['calories']?.toDouble() ?? 0.0,
      totalWeight: map['totalWeight']?.toDouble() ?? 0.0,
      totalTime: map['totalTime']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Recipe.fromJson(String source) => Recipe.fromMap(json.decode(source));
}
