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
            color: Colors.red,
        child: Form(
        child: TextFormField (
          style: TextStyle(
            color: Colors.red,
          ),
          decoration: InputDecoration (
          prefixIcon: Icon(Icons.search),
          contentPadding: EdgeInsets.fromLTRB(30, 20, 30, 20),
          border: OutlineInputBorder (
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(width: 0,
            style: BorderStyle.none,
            ),
          ),
          hintText: "Pesquisar livro"
        ),
      ),
      ),
      ),
        ],
      ),
      );
  }
}