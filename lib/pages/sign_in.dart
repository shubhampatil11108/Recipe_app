import 'package:flutter/material.dart';
import 'package:cooking_club/pages/recipe_list.dart';
import '../models/recipe.dart';

class SignIn extends StatefulWidget {
  final VoidCallback toggleTheme;
  const SignIn({Key? key, required this.toggleTheme,
    required List<Recipe> favoriteRecipes,
    required void Function(Recipe recipe) addFavorite,
    required void Function(Recipe recipe) removeFavorite}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  List<Recipe> favoriteRecipes = [];

  void addFavorite(Recipe recipe) {
    setState(() {
      favoriteRecipes.add(recipe);
    });
  }

  void removeFavorite(Recipe recipe) {
    setState(() {
      favoriteRecipes.remove(recipe);
    });
  }

  void signUserIn() {
    // Skip backend authentication, directly navigate to RecipeListPage
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => RecipeListPage(
          favoriteRecipes: favoriteRecipes,
          addFavorite: addFavorite,
          removeFavorite: removeFavorite,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text('Sign In'),
        actions: [
          IconButton(
            icon: Icon(Icons.brightness_6),
            onPressed: widget.toggleTheme,
          ),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 50),
                const Icon(Icons.lock, size: 100),
                const SizedBox(height: 50),
                Text(
                  'Welcome back you\'ve been missed!',
                  style: TextStyle(color: Colors.grey[700], fontSize: 16),
                ),
                const SizedBox(height: 25),
                TextField(
                  controller: usernameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter Username',
                    hintText: 'Write your username here',
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter Password',
                    hintText: 'Enter password here',
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot Password?',
                        style: TextStyle(color: Colors.grey[300]),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                SizedBox(
                  width: 300,
                  height: 70,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.black,
                    ),
                    onPressed: signUserIn,
                    child: const Text('Sign In', style: TextStyle(fontSize: 18)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
