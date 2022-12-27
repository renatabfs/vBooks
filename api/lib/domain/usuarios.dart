class Usuario {
  late final String id;
  late final String nome;
  late final String email;
  late final String senha;

  Usuario({
    this.id = '',
    this.nome = '',
    this.email = '',
    this.senha = '',
  });

  Usuario.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['nome'];
    email = json['email'];
    senha = json['senha'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nome'] = this.nome;
    data['email'] = this.email;
    data['senha'] = this.senha;
    return data;
  }
}
