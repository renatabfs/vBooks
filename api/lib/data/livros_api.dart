import 'package:api/domain/livros.dart';

class LivrosApi {
  fetchLivros() async {
    List<Livro> livros = [];
    Livro livro = Livro(
        autor: "a",
        sinopse: "a",
        titulo: "harry potter",
        id: 'a',
        imagem:
            "https://conteudo.imguol.com.br/c/parceiros/6e/2022/11/15/a-saga-harry-potter-esta-disponivel-no-hbo-max-1668541198115_v2_3x4.jpg");
    livros.add(livro);
    return livros;
  }

  getSearchedBook(String value) async {
    Livro livro = Livro(
        autor: "a",
        sinopse: "a",
        titulo: "harry potter",
        id: 'a',
        imagem:
            "https://conteudo.imguol.com.br/c/parceiros/6e/2022/11/15/a-saga-harry-potter-esta-disponivel-no-hbo-max-1668541198115_v2_3x4.jpg");
    return [livro];
  }
}
