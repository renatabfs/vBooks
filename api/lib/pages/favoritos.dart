import 'package:api/widgets/bookTemplate.dart';
import 'package:flutter/material.dart';
import 'package:api/data/livrosBD.dart';
import 'package:api/domain/livros.dart';

class Favoritos extends StatefulWidget {
  const Favoritos({Key? key}) : super(key: key);

  @override
  State<Favoritos> createState() => _FavoritosState();
}

class _FavoritosState extends State<Favoritos> {
  List<Livro> lista = LivrosBD.listaLivros;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(top:10),
            child: Text(
              'Meus Favoritos',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 30,
                fontWeight: FontWeight.w600,
                color: Color(0x0FF412F50),
              ),
            ),
          ),
          buildListView(),
        ],
      ),
    );
  }

  buildListView() {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 0.52,
        //crossAxisSpacing: 2,
      ),
      itemCount: lista.length,
      itemBuilder: (context, index) {
        return BookTemplate(
          livro: lista[index],
        );
      },
    );
  }
}
