class Autores {
  late final String nome;
  late final String imagem;
  late final int id;

  Autores({required this.nome, required this.imagem, required this.id});

  Autores.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['nome'];
    imagem = json['imagem'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nome'] = this.nome;
    data['imagem'] = this.imagem;
    return data;
  }
}
