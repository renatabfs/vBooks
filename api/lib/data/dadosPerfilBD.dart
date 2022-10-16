import 'package:api/domain/dadosPerfil.dart';
import 'package:flutter/material.dart';

class DadosPerfilBD {
  static List<DadosPerfil> listaDados = [
    DadosPerfil(
      id: 1,
      dado: "Nome",
      icon:
          Icon(Icons.account_box_outlined, color: Color(0x0FFBDB8D9), size: 32),
    ),
    DadosPerfil(
      id: 2,
      dado: "Email",
      icon: Icon(Icons.email_outlined, color: Color(0x0FFBDB8D9), size: 32),
    ),
    DadosPerfil(
      id: 3,
      dado: "Nova senha",
      icon:
          Icon(Icons.lock_outline_rounded, color: Color(0x0FFBDB8D9), size: 32),
    ),
  ];

  static Future<List<DadosPerfil>> listarDados() async {
    print("ANTES");
    await Future.delayed(const Duration(seconds: 5));
    print("DEPOIS");
    return listaDados;
  }
}
