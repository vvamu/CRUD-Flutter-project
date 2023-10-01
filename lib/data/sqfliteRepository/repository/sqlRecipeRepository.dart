import 'package:one/data/api/ApiRecipe.dart';
import 'package:one/data/sqfliteRepository/SqlHelper.dart';
import 'package:sqflite/sqflite.dart';

abstract class SqlRecipeRepository {
  static const String _tableName = "Recipes";

  Future<int> insert(ApiRecipe receipe) async {
    int receipeId = 0;
    Database db = await SQLHelper.getDataBase();

    await db.insert(_tableName, receipe.toApi()).then((value) {
      receipeId = value;
    });
    return receipeId;
  }

  static Future<List<ApiRecipe>> getAll() async {
    Database db = await SQLHelper.getDataBase();
    List<Map<String, dynamic>> usersMap = await db.query(_tableName);
    return List.generate(usersMap.length, (index) {
      return ApiRecipe.fromApi(usersMap[index]);
    });
  }

  Future<ApiRecipe> getUser(String userId) async {
    Database db = await SQLHelper.getDataBase();
    List<Map<String, dynamic>> usersMap =
        await db.rawQuery("SELECT * FROM $_tableName WHERE id = $userId");
    if (usersMap.length == 1) {
      return ApiRecipe.fromApi(usersMap[0]);
    } else {
      throw new Exception("Error. More then 1 value in db");
    }
  }

  Future<void> updateUser(ApiRecipe newReceipt) async {
    Database db = await SQLHelper.getDataBase();

    db.rawUpdate(
        "UPDATE $_tableName SET name = '${newReceipt.name}', description = '${newReceipt.description}',ccal = '${newReceipt.ccal}' , maxIngridients = '${newReceipt.maxIngridients}'  WHERE id = '${newReceipt.id}'");
  }

  Future<void> softDelete(int id) async {
    Database db = await SQLHelper.getDataBase();

    db.rawUpdate("UPDATE $_tableName SET IsDeleted = 1 WHERE id = '${id}'");
  }
}
