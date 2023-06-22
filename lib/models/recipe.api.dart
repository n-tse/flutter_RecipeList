import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:recipe_list/models/recipe.dart';

class RecipeApi {
  static Future<List<Recipe>> getRecipe() async {
    var uri = Uri.https("yummly2.p.rapidapi.com", "/feeds/list",
        {"limit": "24", "start": "0"});

    final response = await http.get(uri, headers: {
      'X-RapidAPI-Key': '98bccf6bcbmsh03df6090a0350a5p15a6a9jsn315bf82b0680',
      'X-RapidAPI-Host': 'yummly2.p.rapidapi.com',
    });

    Map data = jsonDecode(response.body);
    List temp = [];
    if (data['feed'] != null) {
      for (var i in data['feed']) {
        temp.add(i['content']['details']);
      }
    }

    return Recipe.recipesFromSnapshot(temp);
  }
}
