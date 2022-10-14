import 'package:api/controller/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../data/dadosPerfilBD.dart';
import '../domain/dadosPerfil.dart';
import '../widgets/perfilTemplate.dart';

class Perfil extends StatefulWidget {
  const Perfil({Key? key}) : super(key: key);

  String get dado => null;


  @override
  State <Perfil> createState() => _PerfilState();
}

class _PerfilState extends State <Perfil>{
  List<DadosPerfil> lista = DadosPerfilBD.listaDados;
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
       buildListView(context),
    ],
    ),
         
    );
  }
   buildListView(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: lista.length,
      itemBuilder: (context, index) {
        return DadosPerfil(
          listaDados: (lista[index].dado),
        );
      },
    );
  }
}