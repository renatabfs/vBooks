import 'package:api/domain/livros.dart';
import 'package:api/pages/description.dart';
import 'package:flutter/material.dart';
import 'package:api/data/livrosBD.dart';

class BookTemplate extends StatefulWidget {
  final Livro livros;

  const BookTemplate({
    Key? key,
    required this.livros,
  }) : super(key: key);

  @override
  State<BookTemplate> createState() => _BookTemplateState();
}

class _BookTemplateState extends State<BookTemplate> {
  List<Livro> lista = LivrosBD.listaLivros;
  Livro get livro => widget.livros;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Description(livros: lista[1],)));
      },
      child: Container(
        height: 120,
        width: 110,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(15, 40, 15, 10),
              child: Container(
                width: 110,
                height: 120,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    livro.imagem,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Text(
                    textAlign: TextAlign.center,
                    livro.titulo,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontSize: 12,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Poppins",
                    color: Color(0x0FF412F59),),
                  ),
                  Text(
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    livro.autor,
                    style: const TextStyle(
                        fontSize: 12,
                        color: Color(0x0FFBDB8D9),
                        fontWeight: FontWeight.w500,
                        fontFamily: "Poppins"),
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
