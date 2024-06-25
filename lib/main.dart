import 'package:flutter/material.dart';
import 'package:cooking_club/pages/sign_in.dart';
import 'package:cooking_club/models/recipe.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDarkMode = false;
  List<Recipe> favoriteRecipes = [];

  void toggleTheme() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }

  void addFavorite(Recipe recipe) {
    setState(() {
      if (!favoriteRecipes.contains(recipe)) {
        favoriteRecipes.add(recipe);
      }
    });
  }

  void removeFavorite(Recipe recipe) {
    setState(() {
      favoriteRecipes.remove(recipe);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: isDarkMode ? ThemeData.dark() : ThemeData.light(),
      home: SignIn(
        toggleTheme: toggleTheme,
        favoriteRecipes: favoriteRecipes,
        addFavorite: addFavorite,
        removeFavorite: removeFavorite,
      ),
    );
  }
}
