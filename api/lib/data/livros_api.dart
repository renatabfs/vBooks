import 'dart:convert';
import 'package:api/domain/livros.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class LivrosApi {
  final String _baseUrl = "localhost:8000";

  fetchLivros() async {
    Uri url = Uri.http(_baseUrl, "/books");
    Response response = await http.get(url);
    var json = jsonDecode(response.body);
    if (response.statusCode != 200) {
      throw Exception('Failed to load books');
    }
    return json;
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
