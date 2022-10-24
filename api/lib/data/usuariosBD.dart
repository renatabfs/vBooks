import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class UsuariosBD {
  Future<Database> initDB() async {
    String path = await getDatabasesPath();
    String databasePath = join(path, "usuarios.db");
    Database db = await openDatabase(
      databasePath,
      version: 1,
      onCreate: onCreate,
    );

    print(databasePath);
    return db;
  }

  Future<FutureOr<void>> onCreate(Database db, int version) async {
    String sql =
        'create table USUARIO (id INTEGER PRIMARY KEY, nome varchar(100), email varchar(100), senha varchar(100));';
    await db.execute(sql);

    sql =
        "INSERT INTO USUARIO (id, nome, email, senha) VALUES (1, 'admin', 'admin@admin.com', 'admin123');";
    await db.execute(sql);
  }
}
