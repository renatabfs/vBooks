import 'package:api/controller/user_controller.dart';
import 'package:api/domain/usuarios.dart';
import 'package:api/pages/login.dart';
import 'package:api/pages/navbar.dart';
import 'package:api/widgets/form_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:api/data/usuariosBD.dart';
import 'package:provider/provider.dart';

class Cadastrar extends StatefulWidget {
  const Cadastrar({Key? key}) : super(key: key);

  @override
  State<Cadastrar> createState() => _CadastrarState();
}

class _CadastrarState extends State<Cadastrar> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final emailInput = FormInput(
      label: "E-mail",
      hint: "example@mail.com",
      obscure: false,
      suffixIcon: Icon(Icons.mail_outline_rounded, color: Color(0xFFBDB8D9)));

  final senhaInput = FormInput(
      label: "Senha",
      hint: "Senha",
      obscure: true,
      suffixIcon: Icon(Icons.lock_outline_rounded, color: Color(0xFFBDB8D9)));

  final nomeInput = FormInput(
      label: "Nome",
      hint: "Digite seu nome",
      obscure: false,
      suffixIcon: Icon(Icons.person_outline, color: Color(0xFFBDB8D9)));

  @override
  Widget build(BuildContext context) {
    final usuarioProvider = Provider.of<UserController>(context);
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
                "assets/images/registrar_ilustracao.svg",
                height: (MediaQuery.of(context).size.height) * 0.18,
              ),
              Form(
                  key: _formKey,
                  child: Column(children: [nomeInput, emailInput, senhaInput])),
              Column(
                children: [
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xFF412F59),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: TextButton(
                        onPressed: () async {
                          if (!_formKey.currentState!.validate()) {
                            return;
                          }
                          _formKey.currentState!.save();

                          List<Usuario> usuarios =
                              await UsuariosBD().getUsuarios();

                          for (var usuario in usuarios) {
                            if (usuario.email == emailInput.inputValue.text) {
                              print("Erro de cadastro! O usuário já existe!");
                              showDialog<String>(
                                context: context,
                                builder: (BuildContext context) => AlertDialog(
                                  title: const Text('Erro de cadastro!'),
                                  content: const Text('O usuário já existe!'),
                                ),
                              );
                              return;
                            }
                          }

                          Usuario usuario = Usuario(
                              id: usuarios.length + 1,
                              nome: nomeInput.inputValue.text,
                              email: emailInput.inputValue.text,
                              senha: senhaInput.inputValue.text);

                          await UsuariosBD().insertUsuario(usuario);

                          usuarioProvider.setUsuario(usuario);

                          // Navivagate replace to navbar

                          Navigator.pushReplacement(context, MaterialPageRoute(
                            builder: (context) {
                              return const Navbar();
                            },
                          ));
                        },
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            "Registrar-se",
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
                          return const Login();
                        },
                      ));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Já possui uma conta?",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFFBDB8D9),
                            fontFamily: "Poppins",
                          ),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          "Entre",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
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
