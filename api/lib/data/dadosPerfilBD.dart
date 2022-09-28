import 'package:api/data/livrosBD.dart';
import 'package:api/domain/usuarios.dart';

class DadosPerfilBD {
  static List<dados> listaDados = [
    Dado(
      nome: "Nome",
      icon: IconData(0xee34, fontFamily: 'MaterialIcons', Color: (0x0FFBDB8D9));

    ),
    Dado(
      email: "Email",
      icon: IconData(0xe22a, fontFamily: 'MaterialIcons', Color: (0x0FFBDB8D9));
    ),
    Dado(
      novaSenha: "Nova senha",
      icon: IconData(0xe3ae, fontFamily: 'MaterialIcons', Color: (0x0FFBDB8D9));
    ),
  ];
}
