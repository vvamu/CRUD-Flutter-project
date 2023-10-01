import 'package:one/domain/models/Recipe.dart';

abstract class AbstractRecipeRepository {
  Future<Recipe> get({required int id});
  

  //var _ingridients = <Ingridient>[];
  //get
  //List<Ingridient> get Ingridients => _ingridients;
}
