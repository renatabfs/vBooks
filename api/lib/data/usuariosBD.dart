import 'package:api/domain/usuarios.dart';

class UsuariosBD {
  static List<Usuario> listaUsuario = [
    Usuario(
      id: 1,
      nome: "admin",
      email: "admin@admin.com",
      senha: "admin123",
    ),
  ];
}
