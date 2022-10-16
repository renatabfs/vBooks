import 'package:api/controller/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../data/dadosPerfilBD.dart';
import '../domain/dadosPerfil.dart';
import '../widgets/perfilTemplate.dart';

class Perfil extends StatefulWidget {
  const Perfil({Key? key}) : super(key: key);

  // String get dado => null;

  @override
  State<Perfil> createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  // Future <List<DadosPerfil>> lista = DadosPerfilBD.listarDados;
  @override
  Widget build(BuildContext context) {
    var usuarioProvider = Provider.of<UserController>(context);

    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Padding(
        padding: EdgeInsets.all(32),
        child: ListView(
          children: [
            //DottedBorder(
            // borderType: BorderType.RRect,
            // radius: Radius.circular(30),
            //padding: EdgeInsets.all(6),
            CircleAvatar(
              radius: 28,
              backgroundColor: Color(0x0FFB9D4D7),
              child: Text(
                usuarioProvider.usuario.nome[0],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Poppins",
                  color: Colors.white,
                ),
              ),
            ),
            //),
            const SizedBox(height: 16),
            Text(
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
            Column(
              children: [
                Text(
                  "Nome",
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
                    usuarioProvider.usuario.nome,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Poppins",
                      color: Color(0x0FFBDB8D9),
                    ),
                  ),
                ),
                Text(
                  "Email",
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
                    usuarioProvider.usuario.email,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Poppins",
                      color: Color(0x0FFBDB8D9),
                    ),
                  ),
                ),
                Text(
                  "Nova senha",
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
                    "************",
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
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFF412F59),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                "Salvar",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Poppins",
                  color: Color(0x0FFFFFFFF),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
