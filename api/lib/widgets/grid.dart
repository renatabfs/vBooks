import 'package:api/domain/livros.dart';
import 'package:api/widgets/bookTemplate.dart';
import 'package:flutter/material.dart';

class Grid extends StatefulWidget {
  final List<Livro> lista;
  const Grid({Key? key, required this.lista}) : super(key: key);

  @override
  State<Grid> createState() => _GridState();
}

class _GridState extends State<Grid> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: EdgeInsets.symmetric(horizontal: 20),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, mainAxisSpacing: 50, childAspectRatio: 0.6),
      itemCount: widget.lista.length,
      itemBuilder: (context, index) {
        return BookTemplate(
          livro: widget.lista[index],
        );
      },
    );
  }
}