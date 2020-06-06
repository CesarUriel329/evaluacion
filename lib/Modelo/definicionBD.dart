import 'dart:async';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';




class DefinicionBD {

  static final DefinicionBD dbProvider = DefinicionBD();

  Database _database;

  Future<Database> get database async {
    if (_database != null) return _database;
    _database = await crearBD();
    return _database;
  }

  crearBD() async {
    String path = join(await getDatabasesPath(), "actividades.db");
    var bd;

    bd = await openDatabase(path,
        version: 1, onCreate: _initDB, onUpgrade: _onUpgrade);

    return bd;
  }

  //This is optional, and only used for changing DB schema migrations
  void _onUpgrade(Database database, int oldVersion, int newVersion) {
    if (newVersion > oldVersion) {}
  }

  void _initDB(Database database, int version) async {
    await database.execute("CREATE TABLE actividades ("
        "nombreAct TEXT, "
        "fecha TEXT, "
        "descripcion TEXT "
        ")");
  }




}


