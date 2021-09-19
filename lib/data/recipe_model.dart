import 'dart:convert';

import 'links.dart';
import 'recipe.dart';

class RecipeModel {
  final Recipe recipe;
  final Links links;
  RecipeModel({
    required this.recipe,
    required this.links,
  });

  Map<String, dynamic> toMap() {
    return {
      'recipe': recipe.toMap(),
      'links': links.toMap(),
    };
  }

  factory RecipeModel.fromMap(Map<String, dynamic> map) {
    return RecipeModel(
      recipe: Recipe.fromMap(map['recipe']),
      links: Links.fromMap(map['_links']),
    );
  }

  String toJson() => json.encode(toMap());

  factory RecipeModel.fromJson(String source) =>
      RecipeModel.fromMap(json.decode(source));

  static List<RecipeModel> fromListDynamic(List<dynamic> datas) {
    // ignore: unnecessary_null_comparison
    if (datas == null) return [];
    return datas.map<RecipeModel>((e) => RecipeModel.fromMap(e)).toList();
  }
}
