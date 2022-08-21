import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart'

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
        padding: EdgeInsets.fromLTRB (36,40,36,48),
        child: SizedBox (
          width: 346,
          height: 56,
          child: TypeAheadField (
            suggestionsCallback: ,
            onSuggestionSelected: ,
          textFieldConfiguration: TextField (
          style: TextStyle(
            color: Color(0XFFBDB8D9)
          ),
          decoration: InputDecoration (
          labelText: "Pesquisar livro",
          filled: true,
          fillColor: Color(0xFFEEEEEE),
          prefixIcon: Icon(Icons.search),
          enabledBorder: OutlineInputBorder (
            borderSide: BorderSide(width: 0,
            color: Colors.red,
            style: BorderStyle.none,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          ),
          ),
          ),
        ),
      ),
      ),
      Expanded (
        child: Padding (
          padding: EdgeInsets.fromLTRB(54, 168, 54, 270),
        child: Container (
          width: 326,
          height: 296,
          decoration: BoxDecoration (
            image: DecorationImage (
              image: AssetImage("assets/images/searchimage.png"),
              alignment: Alignment.center,
             
          ),
          ),
          )
      ),
      )
        ],
      ),
      );
  }
}