import 'package:api/data/livrosBD.dart';
import 'package:api/domain/livros.dart';
import 'package:api/widgets/bookTemplate.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  List<Livro> listaTotal = LivrosBD.listaLivros;
  List<Livro> resultados = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                    resultados.clear();
                    List<Livro> onChangedList = [];
                    if (value != null && value.length > 0 && value != "") {
                      for (var i = 0; i < listaTotal.length; i++) {
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
              buildListView(resultados),
            ],
          ),
        ),
      ),
    );
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
      return GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 0.52,
          //crossAxisSpacing: 2,
        ),
        itemCount: lista.length,
        itemBuilder: (context, index) {
          return BookTemplate(
            livro: lista[index],
          );
        },
      );
    }
  }
}
