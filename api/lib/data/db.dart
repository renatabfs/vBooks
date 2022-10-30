import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  Future<Database> initDB() async {
    String path = await getDatabasesPath();
    String databasePath = join(path, "vbooks.db");
    Database db = await openDatabase(
      databasePath,
      version: 1,
      onCreate: onCreate,
    );
    return db;
  }

  Future<FutureOr<void>> onCreate(Database db, int version) async {
    String _user = '''CREATE TABLE USUARIO (
          id INTEGER PRIMARY KEY, 
          nome varchar(100), 
          email varchar(100), 
          senha varchar(100));
        ''';
    await db.execute(_user);

    await db.insert('USUARIO', {
      'id': 1,
      'nome': 'admin',
      'email': 'admin@admin.com',
      'senha': 'admin123',
    });

    String _books = '''CREATE TABLE LIVROS (
      id INTEREGER PRIMARY KEY,
      sinopse varchar (200),
      autor varchar (100),
      titulo varchar (100),
      imagem varchar (100));
      ''';
    await db.execute(_books);

    await db.insert('LIVROS', {
      'id': 1,
      'sinopse':
          'Referência completa para programadores, JavaScript: O guia definitivo fornece uma ampla descrição da linguagem JavaScript básica e das APIs JavaScript do lado do cliente definidas pelos navegadores Web. Em sua 6ª edição, cuidadosamente reescrita para estar de acordo com as melhores práticas de desenvolvimento Web atuais, abrange ECMAScript 5 e HTML5 e traz novos capítulos que documentam jQuery e JavaScript do lado do servidor. Recomendado para programadores experientes que desejam aprender a linguagem de programação da Web e para programadores JavaScript que desejam ampliar seus conhecimentos e dominar a linguagem, este é o guia do programador e manual de referência de JavaScript completo e definitivo.',
      'autor': 'David Flanagan',
      'titulo': 'JavaScript - O guia definitivo',
      'imagem':
          'https://images-na.ssl-images-amazon.com/images/I/91z1xY4ppaL.jpg',
    });

    await db.insert('LIVROS', {
      'id': 2,
      'sinopse':
          'Esta obra é indicada para um público iniciante em programação imperativa de computadores e para todos os estudantes que estão tendo dificuldades de aprender algoritmos pelo método tradicional. O objetivo deste livro é apresentar 500 exercícios resolvidos para que o aluno possa então se familiarizar com uma nova linguagem, entendê-la e a partir daí, começar a achar suas próprias soluções. O livro possui conceitos teóricos sobre algoritmos de uma forma bem rápida e resumida.Introdução à programação está dividido por assunto e organizado em 6 grandes blocos: * o primeiro, abrange algoritmos do cotidiano; * no segundo, somente algoritmos que usam funções, comando de atribuição, de entrada e saída; * no terceiro bloco, o comando de seleção; * no quarto bloco, os comandos de repetição; * no quinto os algoritmos que manipulam vetores e matrizes e, no sexto, algoritmos utilizando função.No apêndice foram incluídos problemas de raciocínio lógico e uma ferramenta para testar os algoritmos no computador.',
      'autor': 'Anita Lopes Guto Garcia',
      'titulo': 'Introdução à programação: 500 Algorítmos Resolvidos',
      'imagem':
          'https://images-na.ssl-images-amazon.com/images/I/51ljjwmnAhL._SX352_BO1,204,203,200_.jpg',
    });
  }
}
