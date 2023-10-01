import 'package:one/domain/interfaces/AbstractEntity.dart';
import 'Ingridient.dart';

class Recipe extends AbstractEntity {
  final int id;
  String name = "DefaultRecipe";
  final String? description;
  final int ccal;
  final int maxIngridients;
  final DateTime dateCreated;
  final bool IsDeleted;

  List<Ingridient> ingridients = <Ingridient>[];
  //get
  List<Ingridient> get Ingridients => ingridients;

  Recipe(
      {required this.id,
      required this.name,
      required this.description,
      required this.ccal,
      required this.maxIngridients,
      required this.dateCreated, 
      required this.IsDeleted});
  Recipe.withIngridients(
      {required this.id,
      required this.name,
      required this.description,
      required this.ccal,
      required this.maxIngridients,
      required this.dateCreated,
      required this.IsDeleted,
      required this.ingridients});
  Recipe.withIngridientsAndSayHello(
      {required this.id,
      required this.name,
      required this.description,
      required this.ccal,
      required this.maxIngridients,
      required this.dateCreated,
      required this.IsDeleted,
      required this.ingridients,
      Function? sayHello});
}
