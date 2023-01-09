class Favorito {
  late final String id;
  late final String livroId;
  late final String userid;
  Favorito({required this.userid, required this.livroId, required this.id});

  Favorito.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    livroId = json['livroId'];
    userid = json['userid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['livroId'] = this.livroId;
    data['userid'] = this.userid;
    return data;
  }
}
