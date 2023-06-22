import 'package:flutter/material.dart';

class RecipeDetailsPage extends StatelessWidget {
  final String name;
  final int numberOfServings;
  const RecipeDetailsPage(
      {required this.name, required this.numberOfServings, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text("Recipe Details"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Container(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: const TextStyle(color: Colors.black, fontSize: 30),
            ),
            Text("Servings: $numberOfServings",
                style: const TextStyle(color: Colors.black, fontSize: 20)),
            const Text("Directions:",
                style: TextStyle(color: Colors.black, fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
