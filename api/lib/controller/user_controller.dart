import 'package:api/data/usuarios_api.dart';
import 'package:api/domain/livros.dart';
import 'package:api/domain/usuarios.dart';
import 'package:flutter/material.dart';

class UserController with ChangeNotifier {
  late Usuario _usuario;
  late List<Livro> _favoritos = [];
  Usuario get usuario => this._usuario;
  List<Livro> get favoritos => this._favoritos;
  void setUsuario(Usuario user) async {
    _usuario = user;
    fetchFavoritos();
    notifyListeners();
  }

  void fetchFavoritos() async {
    var response = await UsuariosApi().fetchFavorites(_usuario.id);
    for (var favorito in response) {
      _favoritos.add(Livro.fromJson(favorito));
    }
    notifyListeners();
  }

  void handleFavorite(Livro livro) async {
    notifyListeners();
  }
}
