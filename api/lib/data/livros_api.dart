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
    // RETORNO FAKE DE TODOS OS LIVROS
    // IMPLEMENTAR PESQUISA NA ROTA DE PESQUISA DA API
    Uri url = Uri.http(_baseUrl, "/books");
    Response response = await http.get(url);
    var json = jsonDecode(response.body);
    if (response.statusCode != 200) {
      throw Exception('Failed to load books');
    }
    return json;
  }
}
