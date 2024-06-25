import 'package:shared_preferences/shared_preferences.dart';
import 'package:cooking_club/models/recipe.dart';

class LocalStorage {
  static SharedPreferences? _prefs;

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static List<Recipe> getFavoriteRecipes() {
    // Add logic to retrieve favorite recipes from SharedPreferences
    // This is just a placeholder example
    return [];
  }

  static Future<void> saveFavoriteRecipe(Recipe recipe) async {
    // Add logic to save a recipe to favorites in SharedPreferences
  }
}
