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
          )
        ],
      ),
    );
  }
}
