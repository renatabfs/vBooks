//import 'dart:convert';
import 'package:api/data/db.dart';
import 'package:api/domain/livros.dart';
import 'package:sqflite/sqlite_api.dart';

class LivrosDao {
  Future<List<Livro>> listarLivros() async {
    Database db = await DBHelper().initDB();

    String sql = 'SELECT * FROM livro';
    var result = await db.rawQuery(sql);

    List<Livro> lista = <Livro>[];
    for (var json in result) {
      Livro livro = Livro.fromJson(json);
      lista.add(livro);
    }

    return lista;
  }
}
