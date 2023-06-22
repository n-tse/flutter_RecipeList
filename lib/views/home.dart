import 'package:flutter/material.dart';
import 'package:recipe_list/models/recipe.api.dart';
import 'package:recipe_list/models/recipe.dart';
import 'package:recipe_list/views/widgets/recipe_card.dart';
import 'package:recipe_list/views/widgets/recipe_details.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Recipe> _recipes = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();

    getRecipes();
  }

  Future<void> getRecipes() async {
    _recipes = await RecipeApi.getRecipe();
    setState(() {
      _isLoading = false;
    });
    // print(_recipes);
  }

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
          backgroundColor: Colors.amber,
          // backgroundColor: const Color.fromARGB(255, 222, 222, 222),
        ),
        body: _isLoading
            ? const Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: _recipes.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RecipeDetailsPage(
                                  name: _recipes[index].name,
                                  thumbnailUrl: _recipes[index].images,
                                  numberOfServings: _recipes[index].numberOfServings,
                                  cookTime: _recipes[index].totalTime,
                                  directionsUrl: _recipes[index].directionsUrl)));
                    },
                    child: RecipeCard(
                        title: _recipes[index].name,
                        cookTime: _recipes[index].totalTime,
                        rating: _recipes[index].rating.toString(),
                        thumbnailUrl: _recipes[index].images),
                  );
                })
        // RecipeCard(
        //     title: "Honey Sesame Chicken",
        //     cookTime: "20 min",
        //     rating: "4.0",
        //     thumbnailUrl:
        //         "https://christieathome.com/wp-content/uploads/2021/02/Honey-Sesame-Chicken-Updated-5.jpg"),
        );
  }
}
