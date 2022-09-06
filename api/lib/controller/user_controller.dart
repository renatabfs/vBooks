import 'package:api/domain/usuarios.dart';
import 'package:flutter/material.dart';

class UserController with ChangeNotifier {
  late Usuario _usuario;
  Usuario get usuario => this._usuario;
  void setUsuario(Usuario user) {
    _usuario = user;
    notifyListeners();
  }
}
