import 'package:api/domain/livros.dart';
import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Container(
            width: 100,
            height: 300,
            decoration: BoxDecoration(
              color: Color(0x0FF412F59),
            ),
            child: Padding(
              padding: EdgeInsets.fromLTRB(100, 30, 100, 30),
              child: Container(
                width: 10,
                height: 10,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    livro.imagem,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              livro.sinopse,
              softWrap: true,
              overflow: TextOverflow.fade,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                fontFamily: "Poppins",
                color: Color(0x0FF412F59),
              ),
            ),
          ),
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
                    child: Row(children: [
                      Padding(
                          padding:
                              EdgeInsets.only(bottom: 22, left: 32, right: 30),
                          child: SizedBox(
                              height: 64,
                              width: 64,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0)),
                                    backgroundColor: Color(0x0FFF2F2F2)),
                                child: Icon(
                                  Icons.bookmark_rounded,
                                  color: Color(0x0FFF2D399),
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
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0)),
                                      backgroundColor: Color(0x0FF412F59)),
                                  onPressed: (() {}),
                                  child: Text(
                                    'Leia aqui!',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ))))
                    ]),
                  ),
                )))
          ])),
        ],
      ),
    );
  }
}
