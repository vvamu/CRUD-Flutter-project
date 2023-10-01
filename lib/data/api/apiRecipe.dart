import 'package:one/domain/models/Ingridient.dart';
import 'package:one/domain/models/Recipe.dart';

import '../../domain/interfaces/AbstractEntity.dart';

class ApiRecipe {
  final int id;
  final String name;
  final String? description;
  final int ccal;
  final int maxIngridients;
  final DateTime dateCreated;
  final bool isDeleted;

  //final List<Ingridient> Ingridients;

  Recipe fromApi() {
    return Recipe(
      id: id.toInt(),
      name: name,
      description: description,
      ccal: ccal.toInt(),
      maxIngridients: maxIngridients.toInt(),
      dateCreated: dateCreated.toUtc(),
      IsDeleted: isDeleted,
    );
  }

  Map<String, dynamic> toApi() {
    return {
      'id': id.toInt(),
      'name': name,
      'description': description,
      'ccal': ccal.toInt(),
      'maxIngridients': maxIngridients.toInt(),
      'dateCreated': dateCreated.toUtc(),
      'IsDeleted': isDeleted
    };
  }

  ApiRecipe.fromApi(Map<String, dynamic> data)
      : id = data['results']['id'],
        name = data['results']['name'],
        description = data['results']['description'],
        ccal = data['results']['ccal'],
        maxIngridients = data['results']['maxIngridients'],
        dateCreated = data['results']['dateCreated'],
        isDeleted = data['results']['is_deleted'] == 0 ? false : true;
}
