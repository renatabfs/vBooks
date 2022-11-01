import 'package:api/domain/livros.dart';
import 'package:api/pages/description.dart';
import 'package:flutter/material.dart';

class BookTemplate extends StatefulWidget {
  final Livro livro;

  const BookTemplate({
    Key? key,
    required this.livro,
  }) : super(key: key);

  @override
  State<BookTemplate> createState() => _BookTemplateState();
}

class _BookTemplateState extends State<BookTemplate> {
  List<Livro> lista = [];
  Livro get livro => widget.livro;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Description(
                      livros: livro,
                    )));
      },
      child: Column(
        children: [
          Container(
            height: 120,
            margin: EdgeInsets.only(bottom: 10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                livro.imagem,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Text(
            textAlign: TextAlign.center,
            livro.titulo,
            softWrap: true,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              fontFamily: "Poppins",
              color: Color(0x0FF412F59),
            ),
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
    );
  }
}
