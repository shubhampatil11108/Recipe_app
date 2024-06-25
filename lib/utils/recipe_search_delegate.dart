import 'package:flutter/material.dart';
import 'package:cooking_club/models/recipe.dart';
import 'package:cooking_club/pages/recipe_detail.dart';


class RecipeSearchDelegate extends SearchDelegate {
  final List<Recipe> recipes;
  final Function(Recipe) addFavorite;
  final Function(Recipe) removeFavorite;

  RecipeSearchDelegate(
      this.recipes, {
        required this.addFavorite,
        required this.removeFavorite,
      });

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<Recipe> results = recipes.where((recipe) => recipe.title.toLowerCase().contains(query.toLowerCase())).toList();

    return ListView.builder(
      itemCount: results.length,
      itemBuilder: (context, index) {
        final isFavorite = false; // Adjust according to your logic
        return ListTile(
          leading: Image.asset(results[index].imageUrl),
          title: Text(results[index].title),
          subtitle: Text(results[index].category),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => RecipeDetailPage(
                  recipe: results[index],
                  isFavorite: isFavorite,
                  addFavorite: addFavorite,
                  removeFavorite: removeFavorite,
                ),
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<Recipe> suggestions = recipes.where((recipe) => recipe.title.toLowerCase().contains(query.toLowerCase())).toList();

    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        final isFavorite = false; // Adjust according to your logic
        return ListTile(
          leading: Image.asset(suggestions[index].imageUrl),
          title: Text(suggestions[index].title),
          subtitle: Text(suggestions[index].category),
          onTap: () {
            query = suggestions[index].title;
            showResults(context);
          },
        );
      },
    );
  }
}
