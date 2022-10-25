//import 'dart:convert';
import 'package:api/data/livrosBD.dart';
import 'package:api/domain/livros.dart';
import 'package:sqflite/sqlite_api.dart';

class UsuariosDao {
  Future<List<Livro>> listarLivros() async {
    LivrosBD dbHelper = LivrosBD();
    Database db = await dbHelper.initDB();

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
