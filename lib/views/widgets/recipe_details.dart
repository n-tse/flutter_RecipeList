import 'package:flutter/material.dart';

class RecipeDetailsPage extends StatelessWidget {
  final String name;
  const RecipeDetailsPage({required this.name, Key? key}) : super(key: key);

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
        body: Center(
          child: Text(
            name,
            style: TextStyle(color: Colors.black),
          ),
        ));
  }
}
