import 'package:api/controller/user_controller.dart';
import 'package:api/data/usuarios_api.dart';
import 'package:api/widgets/bookTemplate.dart';
import 'package:flutter/material.dart';
import 'package:api/domain/livros.dart';
import 'package:provider/provider.dart';

class Favoritos extends StatefulWidget {
  const Favoritos({Key? key}) : super(key: key);

  @override
  State<Favoritos> createState() => _FavoritosState();
}

class _FavoritosState extends State<Favoritos> {
  @override
  Widget build(BuildContext context) {
    final usuarioProvider = Provider.of<UserController>(context);
    Future<List<Livro>> futureLista = UsuariosApi().fetchFavorites();

    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10),
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
          SizedBox(
            height: 32,
          ),
          buldiFutureView(futureLista)
        ],
      ),
    );
  }
}

buldiFutureView(futureLista) {
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
