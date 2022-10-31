import 'package:api/data/livrosBD.dart';
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
  Future<List<Livro>> listaTotal = LivrosBD().getLivros();
  List<Livro> resultados = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<Livro>>(
        future: listaTotal,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<Livro> listaTotal = snapshot.data ?? [];
            return SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.fromLTRB(24, 40, 24, 40),
                child: Column(
                  children: [
                    Form(
                      key: _formKey,
                      autovalidateMode: AutovalidateMode.always,
                      child: TextFormField(
                        onChanged: (value) {
                          resultados.clear();
                          List<Livro> onChangedList = [];
                          if (value != null &&
                              value.length > 0 &&
                              value != "") {
                            for (var i = 0; i < snapshot.data!.length; i++) {
                              if (listaTotal[i]
                                  .titulo
                                  .toLowerCase()
                                  .contains(value.toLowerCase())) {
                                onChangedList.add(listaTotal[i]);
                              }
                            }
                          }
                          setState(() {
                            resultados = onChangedList;
                          });
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
                    buildListView(resultados),
                  ],
                ),
              ),
            );
          }
          ;
        },
      ),
    );
  }
}

buildListView(lista) {
  if (lista.length == 0) {
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
  } else {
    return Grid(futureLista: lista);
  }
}
