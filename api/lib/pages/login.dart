import 'package:api/pages/cadastrar.dart';
import 'package:api/widgets/form_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(32),
        child: Container(
          width: double.infinity,
          constraints:
              BoxConstraints(minHeight: MediaQuery.of(context).size.height),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SvgPicture.asset(
                "assets/images/login_ilustracao.svg",
                height: (MediaQuery.of(context).size.height) * 0.18,
              ),
              Form(
                  autovalidateMode: AutovalidateMode.always,
                  child: Column(
                    children: [
                      const FormInput(
                          label: "E-mail",
                          hint: "example@mail.com",
                          obscure: false,
                          suffixIcon: Icon(Icons.mail_outline_rounded,
                              color: Color(0xFFBDB8D9))),
                      const FormInput(
                          hint: "Senha",
                          label: "Senha",
                          obscure: true,
                          suffixIcon: Icon(Icons.lock_outline_rounded,
                              color: Color(0xFFBDB8D9))),
                    ],
                  )),
              Column(
                children: [
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xFF412F59),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: TextButton(
                        onPressed: () {
                          
                        },
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            "Entrar",
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
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return const Cadastrar();
                        },
                      ));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Não possui uma conta?",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xFFBDB8D9),
                            fontFamily: "Poppins",
                          ),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          "Registre-se",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            color: Color(0xFF412F59),
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
