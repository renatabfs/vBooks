import 'package:api/data/livros_api.dart';
import 'package:api/domain/livros.dart';
import 'package:api/widgets/bookTemplate.dart';
import 'package:api/widgets/grid.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String keyword = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(24, 40, 24, 40),
          child: Column(
            children: [
              Form(
                key: _formKey,
                autovalidateMode: AutovalidateMode.always,
                child: TextFormField(
                  onChanged: (value) {
                    if (value != null && value.length > 0 && value != "") {
                      setState(() {
                        keyword = value;
                      });
                    } else {
                      setState(() {
                        keyword = '';
                      });
                    }
                  },
                  style: TextStyle(color: Color(0XFFBDB8D9)),
                  decoration: InputDecoration(
                    labelText: "Pesquisar livro",
                    filled: true,
                    fillColor: Color(0xFFEEEEEE),
                    prefixIcon: Icon(Icons.search),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 0,
                        color: Colors.red,
                        style: BorderStyle.none,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 32,
              ),
              buildListView(keyword),
            ],
          ),
        ),
      ),
    );
  }
}

buildListView(String value) {
  if (value != null && value.length > 0 && value != "") {
    var listaTotal = LivrosApi().getSearchedBook(value);
    return Grid(futureLista: listaTotal);
  }
  return Container(
    height: 200,
    margin: EdgeInsets.only(top: 150),
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage("assets/images/searchimage.png"),
        fit: BoxFit.contain,
      ),
    ),
  );
}
