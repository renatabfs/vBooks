class Favorito {
  late final int id;
  late final int bookid;
  late final int userid;
  Favorito({required this.userid, required this.bookid, required this.id});

  Favorito.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    bookid = json['bookid'];
    userid = json['userid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['bookid'] = this.bookid;
    data['userid'] = this.userid;
    return data;
  }
}