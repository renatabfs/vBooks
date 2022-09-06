import 'package:api/data/livrosBD.dart';
import 'package:api/domain/usuarios.dart';

class UsuariosBD {
  static List<Usuario> listaUsuario = [
    Usuario(
      id: 1,
      nome: "admin",
      email: "admin@admin.com",
      senha: "admin123",
      favoritos: [
        LivrosBD.listaLivros[1],
      ],
    ),
    Usuario(
      id: 2,
      nome: "1",
      email: "1",
      senha: "1",
      favoritos: [
        LivrosBD.listaLivros[0],
      ],
    ),
  ];
}
