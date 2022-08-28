import 'package:api/widgets/bookTemplate.dart';
import 'package:api/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:api/data/BD.dart';
import 'package:api/domain/livros.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home_page extends StatefulWidget {
  const Home_page({Key? key}) : super(key: key);

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  List<Livro> lista = BD.listaLivros;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Center(
            child: Padding(
                padding: EdgeInsets.only(top: 20),
                child: SizedBox(
                    width: double.infinity,
                    height: 250,
                    child: Center(
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            left: 15,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: Image.network(
                                'https://i.pinimg.com/736x/c3/b7/6d/c3b76d6bd59d6deeb3e5ddf105893654.jpg',
                                fit: BoxFit.fill,
                                width: 330,
                                height: 200,
                              ),
                            ),
                          ),
                          Positioned(
                            left: 55,
                            top: 120,
                            child: Container(
                                width: 250,
                                height: 115,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 248, 247, 247),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(8),
                                      child: SizedBox(
                                        child: Column(
                                          children: [
                                            Text(
                                              'Olá, Fulano!',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600,
                                                fontFamily: "Poppins",
                                                color: Color(0x0FF412F59),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              'Que tal escolher um livro para ler hoje?',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                                fontFamily: "Poppins",
                                                color: Color(0x0FF9F8FBF),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                          )
                        ],
                      ),
                    ))),
          ),
          grid(),
        ],
      ),
    );
  }

  grid() {
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
          livros: lista[index],
        );
      },
    );
  }
}
