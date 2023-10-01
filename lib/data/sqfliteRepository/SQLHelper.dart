import 'dart:async';
import 'dart:io';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class SQLHelper {
  static String path = "db.db";
  static Future<Database> getDataBase() {
    return openDatabase(path);
  }

  static final SQLHelper dbProvider = SQLHelper();
  final receiptTABLE = 'Receipts';
  late Database _database;
  Future<Database> get database async {
    if (_database != null) return _database;
    _database = await createDatabase();
    return _database;
  }

  createDatabase() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    //"ReactiveTodo.db is our database instance name
    String path = join(documentsDirectory.path, "ReactiveTodo.db");
    var database = await openDatabase(path,
        version: 1, onCreate: initDB, onUpgrade: onUpgrade);
    return database;
  }

  //This is optional, and only used for changing DB schema migrations
  void onUpgrade(Database database, int oldVersion, int newVersion) {
    if (newVersion > oldVersion) {}
  }

  void initDB(Database database, int version) async {
    await database.execute("CREATE TABLE $receiptTABLE ("
        "id INTEGER PRIMARY KEY, "
        "description TEXT, "
        /*SQLITE doesn't have boolean where 0 is false 1 is true*/
        "is_done INTEGER "
        ")");
  }
}
