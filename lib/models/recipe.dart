import 'package:flutter/material.dart';


class Recipe {
  final String title;
  final String imageUrl;
  final String category;
  final List<String> ingredients;
  final List<String> instructions;

  Recipe({
    required this.title,
    required this.imageUrl,
    required this.category,
    required this.ingredients,
    required this.instructions,
  });
}
