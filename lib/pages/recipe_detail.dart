import 'package:flutter/material.dart';
import 'package:cooking_club/models/recipe.dart';

class RecipeDetailPage extends StatelessWidget {
  final Recipe recipe;
  final bool isFavorite;
  final Function(Recipe) addFavorite;
  final Function(Recipe) removeFavorite;

  RecipeDetailPage({
    required this.recipe,
    required this.isFavorite,
    required this.addFavorite,
    required this.removeFavorite,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recipe.title),
        actions: [
          IconButton(
            icon: Icon(isFavorite ? Icons.favorite : Icons.favorite_border),
            onPressed: () {
              if (isFavorite) {
                removeFavorite(recipe);
              } else {
                addFavorite(recipe);
              }
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(recipe.imageUrl),
            SizedBox(height: 8.0),
            Text('Category: ${recipe.category}'),
            SizedBox(height: 8.0),
            Text('Ingredients:'),
            for (var ingredient in recipe.ingredients) Text('- $ingredient'),
            SizedBox(height: 8.0),
            Text('Instructions:'),
            for (var instruction in recipe.instructions) Text('- $instruction'),
          ],
        ),
      ),
    );
  }
}
