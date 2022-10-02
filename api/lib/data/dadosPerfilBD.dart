import 'package:api/domain/dadosPerfil.dart';
import 'package:flutter/material.dart';

class DadosPerfilBD {
  static List<DadosPerfil> listaDados = [
    DadosPerfil(
      dado: "Nome",
      icon: Icon(Icons.account_box_outlined, color: Color(0x0FFBDB8D9), size: 32),
    ),
    DadosPerfil(
      dado: "Email",
      icon: Icon(Icons.email_outlined, color: Color(0x0FFBDB8D9), size: 32),
    ),
    DadosPerfil(
      dado: "Nova senha",
      icon: Icon(Icons.lock_outline_rounded, color: Color(0x0FFBDB8D9), size: 32),
    ),
  ];
}

