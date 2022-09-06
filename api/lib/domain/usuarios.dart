import 'package:api/domain/livros.dart';

class Usuario {
  int id;
  String nome;
  String email;
  String senha;
  List<Livro> favoritos;

  Usuario({
    required this.nome,
    required this.email,
    required this.senha,
    required this.id,
    required this.favoritos,
  });
}
