import 'package:api/data/db.dart';
import 'package:api/domain/favoritos.dart';
import 'package:api/domain/livros.dart';
import 'package:sqflite/sqflite.dart';

class FavoritosBD {
  late Database db;

  Future<void> initDB() async {
    db = await DBHelper().initDB();
  }

  Future<List<Livro>> getFavoritos(int usuarioID) async {
    await initDB();
    print("tá procurando os favoritos");
    String sql = 'SELECT * FROM FAVORITOS WHERE userid = $usuarioID';
    var result = await db.rawQuery(sql);

    List<Livro> lista = <Livro>[];

    for(var json in result) {
      Favorito favorito = Favorito.fromJson(json);
      String sql = 'SELECT * FROM LIVROS WHERE id = ${favorito.bookid}';
      var resultLivro = await db.rawQuery(sql);
      for(var jsonLivro in resultLivro) {
        Livro livro = Livro.fromJson(jsonLivro);
        print(livro.titulo);
        lista.add(livro);
      }
    }

    return lista;
  }

  Future<void> insertFavorito(int usuarioID, int livroID) async {
    await initDB();
    await db.insert(
      'FAVORITOS',
      {
        'userid': usuarioID,
        'bookid': livroID,
      },
    );
  }
}
