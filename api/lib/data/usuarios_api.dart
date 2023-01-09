import 'dart:convert';
import 'package:api/domain/usuarios.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class UsuariosApi {
  final String _baseUrl = "192.168.2.129:8000";

  findUserById(String id) async {
    Uri url = Uri.http(_baseUrl, "/user/$id/info");
    Response response = await http.get(url);
    var json = jsonDecode(response.body);

    if (json["error"] != null) {
      return null;
    }

    return Usuario.fromJson(json);
  }

  login(Usuario usuario) async {
    Uri url = Uri.http(_baseUrl, "/login");
    Response response = await http
        .post(url, body: jsonEncode(usuario), headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    });

    var json = jsonDecode(response.body);

    if (json["error"] != null) {
      return null;
    }

    return json;
  }

  createUser(Usuario usuario) async {
    Uri url = Uri.http(_baseUrl, "/user");
    var body = jsonEncode(usuario);
    Response response =
        await http.post(url, body: body, headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    });
    var json = jsonDecode(response.body);
    return json;
  }

  fetchFavorites(String userID) async {
    Uri url = Uri.http(_baseUrl, "/user/$userID/favs");
    Response response = await http.get(url);
    var json = jsonDecode(response.body);
    if (response.statusCode != 200) {
      throw Exception('Failed to load books');
    }
    return json;
  }

  addFavorite(String userID, String livroID) async {
    Uri url = Uri.http(_baseUrl, "/favorite/new");
    var body = jsonEncode({"livroId": livroID, "userId": userID});
    Response response =
        await http.post(url, body: body, headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    });
    var json = jsonDecode(response.body);
    return json;
  }
}
