class Recipe {
  final String name;
  final String images;
  final double rating;
  final String totalTime;
  final int numberOfServings;

  Recipe(
      {required this.name,
      required this.images,
      required this.rating,
      required this.totalTime,
      required this.numberOfServings,});

  factory Recipe.fromJson(dynamic json) {
    if (json == null) {
      // Handle the case where `json` is null
      return Recipe(
        name: '',
        images: '',
        rating: 0.0,
        totalTime: '',
        numberOfServings: 0,
      );
    } else {
      return Recipe(
        name: json['name'] != null ? json['name'] as String : '',
        images: json['images'] != null &&
                json['images'] is List &&
                json['images'].isNotEmpty
            ? json['images'][0]['hostedLargeUrl'] as String
            : '',
        rating: json['rating'] != null ? json['rating'] as double : 0.0,
        totalTime: json['totalTime'] != null ? json['totalTime'] as String : '',
        numberOfServings: json['numberOfServings'] != null ? json['numberOfServings'] as int : 0,
      );
    }
  }

  //   return Recipe(
  //     name: json['name'] != null ? json['name'] as String : '',
  //     images: json['images'] != null &&
  //             json['images'] is List &&
  //             json['images'].isNotEmpty
  //         ? json['images'][0]['hostedLargeUrl'] as String
  //         : '',
  //     rating: json['rating'] != null ? json['rating'] as double : 0.0,
  //     totalTime: json['totalTime'] != null ? json['totalTime'] as String : '',
  //   );
  // }

  static List<Recipe> recipesFromSnapshot(List snapshot) {
    return snapshot.map((data) {
      return Recipe.fromJson(data);
    }).toList();
  }

  @override
  String toString() {
    return 'Recipe {name: $name, image: $images, rating: $rating, totalTime: $totalTime, numberOfServings: $numberOfServings}';
  }
}
