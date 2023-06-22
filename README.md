<a href="https://flutter.dev/">
  <h1 align="center">
    <picture>
      <source media="(prefers-color-scheme: dark)" srcset="https://storage.googleapis.com/cms-storage-bucket/6e19fee6b47b36ca613f.png">
      <img alt="Flutter" src="https://storage.googleapis.com/cms-storage-bucket/c823e53b3a1a7b0d36a9.png">
    </picture>
  </h1>
</a>

# Recipe List

A mobile application built using Flutter and Dart that allows users to view a list of recipes and open links to a recipe's directions.

The app fetches data from the Yummly API provided by RapidAPI.com, and parses the response to display a list view of recipe cards which each include the name and image of the dish, its rating, and its estimated cook time. Upon clicking on a card, a new page is displayed that provides further details such as the servings yield and cook time, as well as a button that navigates to the web page for the recipe's step-by-step instructions.

## Features

- View a list of recipes along with their details.
- Open recipe directions in a web browser.
- Display recipe images, ratings, and cook times.
- Retrieve data from the Yummly API using HTTP requests.
- Parse JSON response using the `dart:convert` library.
- Launch hyperlinks using the `url_launcher` plugin.

## Demo

https://github.com/n-tse/flutter_RecipeList/assets/101606128/62e140f2-5e05-490a-a05e-69ecb7cff0f5

## Tech Stack
- Flutter
- Dart\
  <a href="https://flutter.dev" target="_blank" rel="noreferrer">
    <img src="https://www.vectorlogo.zone/logos/flutterio/flutterio-icon.svg" alt="flutter" width="40" height="40"/>
  </a>
  <a href="https://dart.dev" target="_blank" rel="noreferrer">
    <img src="https://www.vectorlogo.zone/logos/dartlang/dartlang-icon.svg" alt="dart" width="40" height="40"/>
  </a>

## Getting Started

1. Clone the repository: `git clone https://github.com/n-tse/flutter_RecipeList.git`
2. Install dependencies: `flutter pub get`
3. Run the application: `flutter run`

## Resources
This project was one of my early expeditions into the vast world of Flutter application development.

A few resources that I thought were useful that might help get you started:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)
- [YouTube](https://www.youtube.com/)

For more help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## License

Recipe List is open-source software licensed under the [MIT License](LICENSE).\
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
