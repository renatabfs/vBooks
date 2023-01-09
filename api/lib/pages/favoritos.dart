import 'package:api/controller/user_controller.dart';
import 'package:api/data/usuarios_api.dart';
import 'package:api/widgets/grid.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Favoritos extends StatefulWidget {
  const Favoritos({Key? key}) : super(key: key);

  @override
  State<Favoritos> createState() => _FavoritosState();
}

class _FavoritosState extends State<Favoritos> {
  late var futureFavoritos;

  @override
  Widget build(BuildContext context) {
    final usuarioProvider = Provider.of<UserController>(context);
    futureFavoritos = UsuariosApi().fetchFavorites(usuarioProvider.usuario.id);

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
          Grid(futureLista: futureFavoritos),
        ],
      ),
    );
  }
}
