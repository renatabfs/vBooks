class Usuario {
  int id;
  String nome;
  String email;
  String senha;
  List<int> favoritos = [];

  Usuario({
    required this.nome,
    required this.email,
    required this.senha,
    required this.id,
  });
}
