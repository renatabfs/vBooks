import 'package:api/controller/user_controller.dart';
import 'package:api/data/usuarios_api.dart';
import 'package:api/domain/livros.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:provider/provider.dart';

class Description extends StatefulWidget {
  final Livro livros;

  const Description({
    Key? key,
    required this.livros,
  }) : super(key: key);

  @override
  State<Description> createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  Livro get livro => widget.livros;
  var isFavorite;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<UserController>(context);

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double imageSize = width * 0.6;

    if (isFavorite == null) {
      for (Livro livroFavorito in provider.favoritos) {
        if (livroFavorito.id == livro.id) {
          setState(() {
            isFavorite = true;
          });
        }
      }
      if (isFavorite == null) {
        setState(() {
          isFavorite = false;
        });
      }
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Container(
            width: width,
            height: height * 0.55,
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                    onPressed: (() {
                      Navigator.pop(context);
                    }),
                    icon: Icon(Icons.chevron_left),
                    iconSize: 50,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(118, 30, 118, 30),
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 15,
                          color: Color(0X0FFBDB8D9),
                          offset: Offset(-15, -15),
                        ),
                        BoxShadow(
                          spreadRadius: -14.0,
                          blurRadius: 15.0,
                        ),
                      ],
                    ),
                    width: imageSize,
                    height: imageSize,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.network(
                        livro.imagem,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Padding(
                      padding: EdgeInsets.only(bottom: 8),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Sinopse',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              fontFamily: "Poppins",
                              color: Color(0x0FF222222),
                            ),
                          ))),
                  ReadMoreText(
                    livro.sinopse,
                    trimLines: 6,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: ' Ler mais',
                    trimExpandedText: '  Ler menos',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Poppins",
                        color: Color(0x0FF909090)),
                    moreStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0x0FF412F59),
                        fontFamily: "Poppins"),
                    lessStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0x0FF412F59),
                        fontFamily: "Poppins"),
                  ),
                ],
              )),
          SingleChildScrollView(
              child: Row(children: [
            Align(
                alignment: Alignment.center,
                child: Container(
                    child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                )))
          ])),
        ],
      ),
      bottomNavigationBar: Row(children: [
        Padding(
            padding: EdgeInsets.only(bottom: 22, left: 32, right: 30),
            child: SizedBox(
                height: 64,
                width: 64,
                child: ElevatedButton(
                  onPressed: () async {
                    if (!isFavorite) {
                      var response = await UsuariosApi()
                          .addFavorite(provider.usuario.id, livro.id);
                      if (response == true) {
                        setState(() {
                          isFavorite = true;
                        });
                      }
                    }
                    provider.fetchFavoritos();
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    primary: Color(0x0FF412F59),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                  child: Icon(
                    Icons.bookmark_rounded,
                    color: isFavorite ? Colors.green : Colors.white,
                    size: 35,
                  ),
                ))),
        Padding(
            padding: EdgeInsets.only(bottom: 22),
            child: SizedBox(
                width: 276,
                height: 64,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      primary: Color(0x0FF412F59),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                    ),
                    onPressed: (() {}),
                    child: Text(
                      'Leia aqui!',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ))))
      ]),
    );
  }
}
