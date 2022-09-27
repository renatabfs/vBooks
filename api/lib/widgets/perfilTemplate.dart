import 'package:flutter/material.dart';
import 'package:api/data/usuariosBD.dart';
import 'package:api/domain/usuarios.dart';

class PerfilTemplate extends StatefulWidget {
  final Perfil perfil;

  const PerfilTemplate({
    Key? key,
    required this.perfil,
  }) : super(key: key);

  @override
  State<UsuarioTemplate> createState() => _UsuarioTemplateState();
}

class _PerfilTemplateState extends State<PerfilTemplate> {
 // List<Usuario> lista = UsuariosBD.listaUsuario;
  Usuario get usuario => widget.usuario;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          children: [
      Center(
      child: Padding(
      padding: EdgeInsets.only(top: 10),
      child: SizedBox(
        width: double.infinity,
        height: 250,
        child: Center(
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
          Positioned.fill(
          child: Align(
            alignment: AlignmentDirectional.topCenter,
            child: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  backgroundColor: Color(0x0FFF2D399),
                  child: const Text(
                    'D ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Poppins",
                      color: Colors.white,
                    ),
                  ),
                )),
          ),
        ),
        Positioned.fill(
          child: Container(
            width: 428,
            height: 668,
            decoration: BoxDecoration(
              color: Color(0x0FFFAFAFA),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0)),
            ),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(8),
                  child: SizedBox(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          widget.usuario.nome,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Poppins",
                            color: Color(0x0FF222222),
                          ),
                        ),
                        Text(
                          widget.usuario.email,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Poppins",
                            color: Color(0x0FF909090),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.logout,
                              size: 32,
                              color: Color(0x0FF412F59),
                            ),
                            Text(
                              'Sair',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                fontFamily: "Poppins",
                                color: Color(0x0FF412F59),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      ],
    ),
    ),
    ),
    ),
  }
}
