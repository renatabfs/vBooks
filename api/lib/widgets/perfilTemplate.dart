import 'package:flutter/material.dart';
import 'package:api/data/usuariosBD.dart';
import 'package:api/domain/usuarios.dart';

class PerfilTemplate extends StatefulWidget {
  final Perfil perfil;
  final Usuario usuario;

  const PerfilTemplate({
    Key? key,
    required this.perfil,
  }) : super(key: key);

  @override
  State<PerfilTemplate> createState() => _PerfilTemplateState();
}

class _PerfilTemplateState extends State<PerfilTemplate> {
  List<dadosPerfil> listaPerfil = DadosPerfilBD.listaDados;
  Dado get perfil => widget.perfil;
  List<usuariol> listaUsuario = UsuarioBD.listaUsuario;
  Usuario get usuario => widget.usuario;
  @override
  Widget build(BuildContext context) {
    //var usuarioProvider = Provider.of<UserController>(context);

    return Card(
      body: ListView(
          children: [
            Center(
              width: double.infinity,
              height: 250,
              child: Text(
                widget.perfil.Dado,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Poppins",
                  color: Color(0x0FF412F59),
            ),
            ),
            child Container(
              decoration: BoxDecoration(
                border: Border.all(width: 2),
                color: const Color(0xFFBDB8D9),
                borderRadius: BorderRadius.circular(12),
                ),
                Text(
                wigdet.usuario.Usuario,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Poppins",
                  color: Color(0x0FFBDB8D9),
            ),
            ),
            )
      ),
      ),
      ],
    ),
    ),
  }
}
