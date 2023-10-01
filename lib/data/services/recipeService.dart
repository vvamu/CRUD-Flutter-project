
import 'package:one/data/api/ApiRecipe.dart';
import 'package:one/domain/models/Recipe.dart';

abstract class RecipeService{
/*
  void getErrorMaxIngridientsCount() {
    throw Exception("Dish can`t contain more than ${maxIngridients}");
  }
  */

  Future<void> get({
    required int id
  }) async
  {
    //var data = await 
    //return ApiRecipe.fromApi(data)
  }

  //get
  //List<Ingridient> get Ingridients => _ingridients;

  //set
  /*
  set addIngridient(Ingridient? ingridient) {
    if (ingridient == null) ingridient = Ingridient();
    for (int i = 0; i < _ingridients.length; i++) {
      var element = _ingridients[i];
      if (element.Name == ingridient.Name) {
        print("Name already in use");
        break;
      }
      if (element.ccal == ingridient.ccal) {
        print("Recipe with such ccal already there is.");
        continue;
      }

      break;
    }

    if (_ingridients.length < maxIngridients) {
      _ingridients.add(ingridient);
    } else
      DishError.getErrorMaxIngridientsCount(maxIngridients);
  }
*/
/*
  void cook() {
    _ingridients.clear();
  }

  Recipe();
  Recipe.withData(int id, this.name,
      [description, this.ccal = 0, isDeleted = false]) {
    this.id = id;
  }
  Recipe.withIngridients(this._ingridients, [Function? sayHello]);

  factory Recipe.fromDatabaseJson(Map<String, dynamic> data) => Recipe.withData(
      data['id'],
      data['name'],
      data['description'],
      data['ccal'],
      data['is_deleted'] == 0 ? false : true);
      */
}