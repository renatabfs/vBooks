import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../controller/user_controller.dart';

class Perfil extends StatefulWidget {
  const Perfil({Key? key}) : super(key: key);

  @override
  State<Perfil> createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  @override
  Widget build(BuildContext context) {
    var usuarioProvider = Provider.of<UserController>(context);
    return Scaffold(
        body: ListView(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 50),
          child: DottedBorder(
            child: CircleAvatar(
              backgroundColor: Color(0x0FFB9D4D7),
              child: Text(
                usuarioProvider.usuario.nome[0].toUpperCase(),
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 36,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ),
              radius: 50,
            ),
            borderType: BorderType.Circle,
            dashPattern: [10, 5, 10, 5, 10, 5],
            color: Colors.grey,
            strokeWidth: 3,
          ),
        ),
        Padding(
            padding: EdgeInsets.only(top: 39,  bottom: 20),
            child: Text(
              'Dados do perfil',
              style: TextStyle(
                  color: Color(0x0FFB9D4D7),
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            )),
        Padding(
          padding: EdgeInsets.only(left: 40),
          child: Text(
            'Name',
            style: TextStyle(
                color: Color(0xFF412F59),
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                fontSize: 20),
            textAlign: TextAlign.justify,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 40, right: 40),
          child: Container(
            alignment: Alignment.center,
            width: 250,
            height: 50,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 248, 247, 247),
              border: Border.all(color: Color(0x0FFBDB8D9)),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              usuarioProvider.usuario.nome,
              style: TextStyle(
                  color: Color(0x0FFBDB8D9),
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  fontSize: 20),
              textAlign: TextAlign.justify,
            ),
          ),
        ),
         Padding(
          padding: EdgeInsets.only(left: 40),
          child: Text(
            'E-mail',
            style: TextStyle(
                color: Color(0xFF412F59),
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                fontSize: 20),
            textAlign: TextAlign.justify,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 40, right: 40),
          child: Container(
            alignment: Alignment.center,
            width: 250,
            height: 50,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 248, 247, 247),
              border: Border.all(color: Color(0x0FFBDB8D9)),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
             usuarioProvider.usuario.email,
              style: TextStyle(
                  color: Color(0x0FFBDB8D9),
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  fontSize: 20),
              textAlign: TextAlign.justify,
            ),
          ),
        ),
         Padding(
          padding: EdgeInsets.only(left: 40),
          child: Text(
            'Location',
            style: TextStyle(
                color: Color(0xFF412F59),
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                fontSize: 20),
            textAlign: TextAlign.justify,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 40, right: 40),
          child: Container(
            alignment: Alignment.center,
            width: 250,
            height: 50,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 248, 247, 247),
              border: Border.all(color: Color(0x0FFBDB8D9)),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              'Arapiraca, Alagoas',
              style: TextStyle(
                  color: Color(0x0FFBDB8D9),
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  fontSize: 20),
              textAlign: TextAlign.justify,
            ),
          ),
        )
      ],
    ));
  }
}
