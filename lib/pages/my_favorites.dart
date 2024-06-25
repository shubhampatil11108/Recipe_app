import 'package:flutter/material.dart';
import 'package:cooking_club/utils/local_storage.dart';
import 'package:cooking_club/models/recipe.dart';
import 'package:cooking_club/pages/recipe_detail.dart';


class MyFavoritesPage extends StatelessWidget {
  final List<Recipe> favoriteRecipes;
  final Function(Recipe) addFavorite;
  final Function(Recipe) removeFavorite;

  MyFavoritesPage({
    required this.favoriteRecipes,
    required this.addFavorite,
    required this.removeFavorite,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Favorites')),
      body: ListView.builder(
        itemCount: favoriteRecipes.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.asset(favoriteRecipes[index].imageUrl),
            title: Text(favoriteRecipes[index].title),
            subtitle: Text(favoriteRecipes[index].category),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RecipeDetailPage(
                    recipe: favoriteRecipes[index],
                    isFavorite: true,
                    addFavorite: addFavorite,
                    removeFavorite: removeFavorite,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
