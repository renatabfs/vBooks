import 'package:api/widgets/favorito_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:api/data/BD.dart';
import 'package:api/domain/livros.dart';

class Favoritos extends StatefulWidget {
  const Favoritos({Key? key}) : super(key: key);

  @override
  State<Favoritos> createState() => _FavoritosState();
  
}

class _FavoritosState extends State<Favoritos> {
  List<Livro> lista = BD.listaLivros;
    
    @override
  
  Widget build(BuildContext context) {
    return Column (
      children:[
      Padding (
      padding: EdgeInsets.all(10),
      child: Text('Meus Favoritos',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontFamily: "Poppins",
        fontSize:30,
        fontWeight: FontWeight.w600,
        color: Color(0x0FF412F50),
      ),
      ),
      ),
     Scaffold(
      backgroundColor: Colors.white,
      body: buildListView(context)
      ),
      ]
      );
  }

  buildListView(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 0.42,
        //crossAxisSpacing: 2,
      ),
      itemCount: lista.length,
      itemBuilder: (context, index) {
        return FavoritosCard(
          livros: lista[index],
        );
      },
    );
  }
}
