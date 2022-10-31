import 'package:api/data/livrosBD.dart';
import 'package:api/domain/livros.dart';
import 'package:api/widgets/bookTemplate.dart';
import 'package:flutter/material.dart';

class Grid extends StatefulWidget {
  final Future<List<Livro>> futureLista;
  const Grid({Key? key, required this.futureLista}) : super(key: key);

  @override
  State<Grid> createState() => _GridState();
}

class _GridState extends State<Grid> {
  Future<List<Livro>> futureLista = LivrosBD().getLivros();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Livro>>(
      future: futureLista,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<Livro> futureLista = snapshot.data ?? [];

          return GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, mainAxisSpacing: 50, childAspectRatio: 0.6),
            itemCount: snapshot.data?.length,
            itemBuilder: (context, index) {
              return BookTemplate(
                livro: snapshot.data![index],
              );
            },
          );
        }

        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
