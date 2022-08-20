import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: Column (
        children: [
           Container (
            height: 150,
        child: Padding (
        padding: EdgeInsets.fromLTRB (36,40,36,36),
        child: Form(
        child: TextFormField (
          style: TextStyle(
            color: Color.fromARGB(255, 197, 76, 76),
          ),
          decoration: InputDecoration (
          filled: true,
          fillColor: Color(0xFFBDB8D9),
          prefixIcon: Icon(Icons.search),
          border: OutlineInputBorder (
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(width: 0,
            color: Colors.red,
            style: BorderStyle.none,
            ),
          ),
          hintText: "Pesquisar livro",
        ),
        ),
      ),
      ),
      ),
      Expanded (
        child: Container (
          child: Column (
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding (
              padding: EdgeInsets.fromLTRB(48,32,308,24),
              child: Text("Top Livros",
                style: TextStyle (
                fontWeight: FontWeight.w600,
                fontSize: 18,
                fontFamily: 'Poppins'
              ),
              ),
              )
            ],
          )
        )
      )
        ],
      ),
      );
  }
}