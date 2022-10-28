import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  Future<Database> initDB() async {
    String path = await getDatabasesPath();
    String databasePath = join(path, "vbooks.db");
    Database db = await openDatabase(
      databasePath,
      version: 1,
      onCreate: onCreate,
    );
    return db;
  }

  Future<FutureOr<void>> onCreate(Database db, int version) async {
    String _user = '''CREATE TABLE USUARIO (
          id INTEGER PRIMARY KEY, 
          nome varchar(100), 
          email varchar(100), 
          senha varchar(100));
        ''';
    await db.execute(_user);

    await db.insert('USUARIO', {
      'id': 1,
      'nome': 'admin',
      'email': 'admin@admin.com',
      'senha': 'admin123',
    });
  }
}
