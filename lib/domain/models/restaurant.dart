import 'package:flutter/material.dart';

import 'Recipe.dart';

class Restaurant {
  var RecipeMap = <Recipe, DateTime>{};
  var RecipeSet = <Recipe>{};
  var RecipeArray = <Recipe>[];

  void createRecipeInMap(Recipe recipe) {
    var Recipe = {recipe: DateTime.now()};
    RecipeMap.addAll(Recipe);
  }

  void createRecipeInSet(Recipe Recipe) {
    RecipeSet.add(Recipe);
  }

  void createRecipeInArray(Recipe Recipe) {
    RecipeArray.add(Recipe);
  }

  //Именованные функции
  Recipe getRecipeFromMapByName({String RecipeName = "undefined"}) =>
      RecipeMap.keys.firstWhere((element) => element.name == RecipeName);

  //параметрами по умолчанию(необяз. парам.)
  Recipe getRecipeFromSetByName([String RecipeName = "undefined"]) =>
      RecipeSet.firstWhere((element) => element.name == RecipeName);

  Recipe getRecipeFromArrayByName({String RecipeName = "undefined"}) =>
      RecipeArray.firstWhere((element) => element.name == RecipeName);

  void findRecipeInMap({String RecipeName = "undefined", date}) {
    var RecipeSearchStatus =
        RecipeMap.keys.any((element) => element.name == RecipeName);

    print(
        "Name: ${RecipeName}, Status: ${RecipeSearchStatus ? "Not found" : "Found"}, ${date is DateTime ? date.day : "Not valid for date"} ");
  }

  DateTime getCurrentDate() => DateTime.now();
}
