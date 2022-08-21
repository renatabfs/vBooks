import 'package:api/domain/livros.dart';
import 'package:flutter/material.dart';

class FavoritosCard extends StatefulWidget {
  final Livro livros;

  const FavoritosCard({
    Key? key,
    required this.livros,
  }) : super(key: key);

  @override
  State<FavoritosCard> createState() => _FavoritosCardState();
}

class _FavoritosCardState extends State<FavoritosCard> {
  Livro get livro => widget.livros;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container (
        width: 127,
            child:Column(
        children: [
            Padding (
            padding: EdgeInsets.fromLTRB(24,40,10,10),
            child: Container(
              width: 110,
              height: 151,
              child: Image.network(
                livro.imagem,
                fit: BoxFit.cover,
              ),
            ),
            ),
             Padding (
              padding:EdgeInsets.all(10),
              child: 
                Column (
                  children: [
                  Text(
                  textAlign: TextAlign.center,
                  livro.titulo,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Poppins",
                    color: Color (0x0FF412F59),
                  ),
                ),
                Text (
                  textAlign: TextAlign.center,
                  livro.autor,
                  style: const TextStyle (
                    fontSize:16,
                    color: Color(0x0FFBDB8D9),
                    fontWeight: FontWeight.w500,
                    fontFamily: "Poppins"
                  ),
                )
                  ],
                ),
             )
        ],
        ),
      ),
        );
  }
}
