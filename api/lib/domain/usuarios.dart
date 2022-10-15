import 'package:api/domain/livros.dart';

class Usuario {
  int? id;
  String? nome;
  String? email;
  String? senha;
  List<Livro>? favoritos;

  Usuario({this.id, this.nome, this.email, this.senha, this.favoritos});

  Usuario.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['nome'];
    email = json['email'];
    senha = json['senha'];
    if (json['favoritos'] != null) {
      favoritos = <Livro>[];
      json['favoritos'].forEach((v) {
        favoritos!.add(new Livro.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nome'] = this.nome;
    data['email'] = this.email;
    data['senha'] = this.senha;
    if (this.favoritos != null) {
      data['favoritos'] = this.favoritos!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
