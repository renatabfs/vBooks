import 'package:api/controller/user_controller.dart';
import 'package:api/domain/usuarios.dart';
import 'package:api/pages/cadastrar.dart';
import 'package:api/pages/navbar.dart';
import 'package:api/widgets/form_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:api/data/usuariosBD.dart';
import 'package:provider/provider.dart';

class Perfil extends StatefulWidget {
  const Perfil({Key? key}) : super(key: key);

  @override
  State <Perfil> createState() => _PerfilState();
}

class _PerfilState extends State <Perfil>{
  List<Usuario> lista = UsuariosBD.listaUsuario;
  @override
  Widget build(BuildContext context) {
    var usuarioProvider = Provider.of<UserController>(context);

    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Padding (
        padding: EdgeInsets.all(32),
         children SingleChildScrollView(
      child: DottedBorder(
      borderType: BorderType.RRect,
          radius: Radius.circular(30),
          //padding: EdgeInsets.all(6),
          child: CircleAvatar(
            radius: 28,
            backgroundColor: Color(0x0FFB9D4D7),
            child: const Text(
              usuarioProvider.usuario.nome[0],
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                fontFamily: "Poppins",
                color: Colors.white,
              ),
            ),
          )),
        const SizedBox(height: 16),
        child: const Text(
          "Editar dados do perfil",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            fontFamily: "Poppins",
            color: Color(0x0FFB9D4D7),
          ),
        ),
      const SizedBox(height: 16),
    ),
    );
  }
}