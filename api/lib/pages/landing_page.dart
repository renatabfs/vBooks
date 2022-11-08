import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:api/pages/login.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(32),
      child: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset("assets/images/garota_lendo.svg"),
            Column(
              children: [
                Text(
                  "Escolha, leia, aprenda.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF412F59),
                    fontSize: 35,
                    height: 1.2,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "Explore uma gama de livros especialmente selecionados para aprimorar seus conhecimentos",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF9F8FBF),
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
            Container(
              width: double.infinity,
              constraints: BoxConstraints(maxWidth: 300),
              decoration: BoxDecoration(
                color: Color(0xFF412F59),
                borderRadius: BorderRadius.circular(12),
              ),
              child: TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(
                      builder: (context) {
                        return const Login();
                      },
                    ));
                  },
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Continuar",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFFFFFFFF),
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  )),
            ),
          ],
        ),
      ),
    ));
  }
}
