import 'package:api/controller/user_controller.dart';
import 'package:api/data/livros_api.dart';
import 'package:api/domain/livros.dart';
import 'package:api/widgets/grid.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home_page extends StatefulWidget {
  const Home_page({Key? key}) : super(key: key);

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  late var futureLivro;

  @override
  Widget build(BuildContext context) {
    var usuarioProvider = Provider.of<UserController>(context);
    futureLivro = LivrosApi().fetchLivros();
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Center(
            child: Padding(
                padding: EdgeInsets.only(top: 20),
                child: SizedBox(
                    width: double.infinity,
                    height: 250,
                    child: Center(
                      child: Stack(
                        alignment: Alignment.center,
                        children: <Widget>[
                          Positioned.fill(
                            child: Align(
                              alignment: Alignment.center,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: SvgPicture.asset(
                                  'assets/images/imagem_home.svg',
                                  fit: BoxFit.fill,
                                  width: 330,
                                  height: 200,
                                ),
                              ),
                            ),
                          ),
                          Positioned.fill(
                              child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                                width: 250,
                                height: 115,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 248, 247, 247),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(8),
                                      child: SizedBox(
                                        child: Column(
                                          children: [
                                            Text(
                                              'Olá, ${usuarioProvider.usuario.nome}',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600,
                                                fontFamily: "Poppins",
                                                color: Color(0x0FF412F59),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              'Que tal escolher um livro para ler hoje?',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                                fontFamily: "Poppins",
                                                color: Color(0x0FF9F8FBF),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                          )),
                        ],
                      ),
                    ))),
          ),
          SizedBox(
            height: 32,
          ),
          Grid(futureLista: futureLivro),
        ],
      ),
    );
  }
}
