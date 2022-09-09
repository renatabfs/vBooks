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
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 150,
              child: Padding(
                padding: EdgeInsets.fromLTRB(36, 15, 36, 0),
                child: SizedBox(
                  width: 346,
                  height: 56,
                  child: TextField(
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
              ),
            ),
            Container(
              width: 326,
              height: 296,
              child: Padding(
                  padding: EdgeInsets.fromLTRB(54, 15, 54, 0),
                  child: Container(
                    width: 326,
                    height: 296,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/searchimage.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
