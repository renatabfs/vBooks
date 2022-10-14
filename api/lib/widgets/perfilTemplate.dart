import 'package:api/domain/dadosPerfil.dart';
import 'package:flutter/material.dart';
import 'package:api/data/usuariosBD.dart';
import 'package:api/domain/usuarios.dart';
import '../data/dadosPerfilBD.dart';
import '../pages/perfil.dart';

class PerfilTemplate extends StatefulWidget {
  final Perfil perfil;
  final Usuario usuario;

  const PerfilTemplate({
    Key? key,
    required this.perfil,
    required this.usuario,
  }) : super(key: key);

  @override
  State<PerfilTemplate> createState() => _PerfilTemplateState();
}

class _PerfilTemplateState extends State<PerfilTemplate> {
  List<DadosPerfil> lista = DadosPerfilBD.listaDados;
  //DadosPerfil get perfil => widget.perfil;
  List<Usuario> listaUsuario = UsuariosBD.listaUsuario;
  //Usuario get usuario => widget.usuario;
  @override
  Widget build(BuildContext context) {
    //var usuarioProvider = Provider.of<UserController>(context);

    var wigdet;
    return Card(
      child: Column(
        children:[ 
          Text(
          widget.perfil.dado,
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            fontFamily: "Poppins",
            color: Color(0x0FF412F59),
          ),
        ),
      Container(
        decoration: BoxDecoration(
          border: Border.all(width: 2),
          color: const Color(0xFFBDB8D9),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          wigdet.usuario.Usuario,
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            fontFamily: "Poppins",
            color: Color(0x0FFBDB8D9),
          ),
        ),
      ),
      ],
    ),
    );
  }
}