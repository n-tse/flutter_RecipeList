import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class RecipeDetailsPage extends StatelessWidget {
  final String name;
  final String thumbnailUrl;
  final int numberOfServings;
  final String cookTime;
  final String directionsUrl;

  const RecipeDetailsPage({
    required this.name,
    required this.thumbnailUrl,
    required this.numberOfServings,
    required this.cookTime,
    required this.directionsUrl,
    Key? key,
  }) : super(key: key);

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
            const SizedBox(width: 6),
            Text(
              name,
              style: const TextStyle(color: Colors.black, fontSize: 30),
            ),
            const SizedBox(height: 6),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.6),
                    offset: const Offset(
                      0.0,
                      10.0,
                    ),
                    blurRadius: 10.0,
                    spreadRadius: -6.0,
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.network(
                  thumbnailUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                const Icon(Icons.group, color: Colors.black),
                const SizedBox(width: 6),
                Text(
                  "Servings: $numberOfServings",
                  style: const TextStyle(color: Colors.black, fontSize: 20),
                ),
              ],
            ),
            Row(
              children: [
                const Icon(Icons.access_time, color: Colors.black),
                const SizedBox(width: 6),
                Text(
                  "Cook Time: $cookTime",
                  style: const TextStyle(color: Colors.black, fontSize: 20),
                ),
              ],
            ),
            const Row(
              children: [
                Icon(Icons.menu_book, color: Colors.black),
                SizedBox(width: 6),
                Text(
                  "Directions:",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Center(
              child: ElevatedButton(
                onPressed: () async {
                  final recipeUri = Uri.parse(directionsUrl);
                  await launchUrl(recipeUri);
                  // if (await canLaunchUrl(recipeUri)) {
                  //   await launchUrl(recipeUri);
                  // } else {
                  //   throw 'Could not launch $directionsUrl';
                  // }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'View Directions',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
