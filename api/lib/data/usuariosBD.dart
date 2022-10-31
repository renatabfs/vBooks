import 'package:api/data/db.dart';
import 'package:api/domain/usuarios.dart';
import 'package:sqflite/sqflite.dart';

class UsuariosBD {
  late Database db;

  Future<void> initDB() async {
    db = await DBHelper().initDB();
  }

  Future<List<Usuario>> getUsuarios() async {
    await initDB();
    String sql = 'SELECT * FROM USUARIO';
    var result = await db.rawQuery(sql);

    List<Usuario> lista = <Usuario>[];
    for (var json in result) {
      Usuario usuario = Usuario.fromJson(json);
      lista.add(usuario);
    }

    return lista;
  }

  Future<void> insertUsuario(Usuario usuario) async {
    await initDB();
    await db.insert(
      'USUARIO',
      usuario.toJson(),
    );
  }
}
