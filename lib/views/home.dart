import 'package:flutter/material.dart';
import 'package:recipe_list/views/widgets/recipe_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.restaurant),
            SizedBox(width: 8),
            Text("My Recipe App"),
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 222, 222, 222),
      ),
      body: const RecipeCard(title: "Honey Sesame Chicken", cookTime: "20 min", rating: "4.0", thumbnailUrl: "https://christieathome.com/wp-content/uploads/2021/02/Honey-Sesame-Chicken-Updated-5.jpg"),
    );
  }
}