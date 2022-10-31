import 'dart:convert';

import 'package:api/data/db.dart';
import 'package:api/domain/usuarios.dart';
import 'package:sqflite/sqlite_api.dart';

class UsuariosDao {
  Future<List<Usuario>> listarUsuarios() async {
    Database db = await DBHelper().initDB();

    String sql = 'SELECT * FROM usuario';
    var result = await db.rawQuery(sql);

    List<Usuario> lista = <Usuario>[];
    for (var json in result) {
      Usuario usuario = Usuario.fromJson(json);
      lista.add(usuario);
    }

    return lista;
  }
}
