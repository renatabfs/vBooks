class Livro {
  late final String imagem;
  late final String titulo;
  late final String autor;
  late final String sinopse;
  late final String id;
  Livro(
      {this.imagem = '',
      this.titulo = '',
      this.autor = '',
      this.sinopse = '',
      this.id = ''});

  Livro.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    imagem = json['imagem'];
    titulo = json['titulo'];
    autor = json['autor'];
    sinopse = json['sinopse'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['imagem'] = this.imagem;
    data['titulo'] = this.titulo;
    data['autor'] = this.autor;
    data['sinopse'] = this.sinopse;
    return data;
  }
}
