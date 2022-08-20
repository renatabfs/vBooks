import 'package:api/domain/livros.dart';

class BD {
  static List <Livro> listaLivros = [
    Livro(
      imagem: "https://images-na.ssl-images-amazon.com/images/I/91z1xY4ppaL.jpg",
      titulo: "JavaScript- O guia definitivo",
      autor: "David Flanagan",
      sinopse: "Referência completa para programadores, JavaScript: O guia definitivo fornece uma ampla descrição da linguagem JavaScript básica e das APIs JavaScript do lado do cliente definidas pelos navegadores Web. Em sua 6ª edição, cuidadosamente reescrita para estar de acordo com as melhores práticas de desenvolvimento Web atuais, abrange ECMAScript 5 e HTML5 e traz novos capítulos que documentam jQuery e JavaScript do lado do servidor. Recomendado para programadores experientes que desejam aprender a linguagem de programação da Web e para programadores JavaScript que desejam ampliar seus conhecimentos e dominar a linguagem, este é o guia do programador e manual de referência de JavaScript completo e definitivo.",
    ),
    Livro(
      imagem: "https://images-na.ssl-images-amazon.com/images/I/51ljjwmnAhL._SX352_BO1,204,203,200_.jpg",
      titulo: "Introdução à programação: 500 Algorítmos Resolvidos",
      autor: "Anita Lopes Guto Garcia",
      sinopse: "Esta obra é indicada para um público iniciante em programação imperativa de computadores e para todos os estudantes que estão tendo dificuldades de aprender algoritmos pelo método tradicional. O objetivo deste livro é apresentar 500 exercícios resolvidos para que o aluno possa então se familiarizar com uma nova linguagem, entendê-la e a partir daí, começar a achar suas próprias soluções. O livro possui conceitos teóricos sobre algoritmos de uma forma bem rápida e resumida.Introdução à programação está dividido por assunto e organizado em 6 grandes blocos: * o primeiro, abrange algoritmos do cotidiano; * no segundo, somente algoritmos que usam funções, comando de atribuição, de entrada e saída; * no terceiro bloco, o comando de seleção; * no quarto bloco, os comandos de repetição; * no quinto os algoritmos que manipulam vetores e matrizes e, no sexto, algoritmos utilizando função.No apêndice foram incluídos problemas de raciocínio lógico e uma ferramenta para testar os algoritmos no computador.",
    ),
    Livro(
      imagem: "https://images-na.ssl-images-amazon.com/images/I/81x-nHq0GXL.jpg",
      titulo: "Análise de Tráfego em Redes TCP/IP",
      autor: "João Eriberto Mota Filho",
      sinopse: "O grande objetivo deste livro é mostrar como realizar a análise de tráfego em redes. A nova geração IP (IPv6) também é abordada com certa profundidade, garantindo um bom entendimento sobre essa tecnologia. Este livro utiliza o tcpdump, exaustivamente, para demonstrar a teoria com base em capturas de tráfego e, consequentemente, ensinar sua análise. Todo o trabalho está dividido em uma introdução e cinco partes, a saber: conceitos básicos; protocolos básicos em redes TCP/IP e sua análise; conhecimentos específicos em redes TCP/IP e sua análise; tráfegos diversos e sistemas específicos; apêndices. É feita uma ampla abordagem sobre protocolos de rede e assuntos correlatos, como IPv4, IPv6, TCP, UDP, ICMP, Ethernet, ARP e NDP, Modelo OSI, roteamento em redes, bridges e sistemas de firewall. Também serão realizados trabalhos com simuladores de redes e programas para detectar invasões. Por seu conteúdo, este livro poderá ser utilizado tanto por autodidatas quanto por universitários de graduação e pós-graduação. É um livro direcionado a todos que empregam TCP/IP dentro de uma rede de computadores, independentemente do sistema operacional utilizado. A análise de tráfego poderá ser feita em qualquer ambiente e os conhecimentos aqui disponibilizados são universais.",
    ),
    Livro(
      imagem: "https://images-na.ssl-images-amazon.com/images/I/415UgDFBjXL._SX371_BO1,204,203,200_.jpg",
      titulo: "PROTOCOLOS E SERVIÇOS DE REDES",
      autor: "Lindenberg Barros de Souza",
      sinopse: "Neste livro, o leitor conhecerá os conceitos e os fundamentos dos protocolos de comunicação e os serviços de transmissão de dados em redes públicas oferecidos por empresas de telecomunicações, bem como a conectividade entre equipamentos adotados na maioria das redes, em especial os protocolos da arquitetura TCP/IP. São apresentados ainda o frame-relay, o X.25, o MPLS, o HDLC, o IP e o Ethernet CSMA, além de wireless e protocolos de roteamento de dados utilizados em roteadores, como RIP e OSPF. O conteúdo pode ser aplicado para os cursos técnicos em Informática, Informática para Internet, Multimeios Didáticos, Manutenção e Suporte em Informática, Redes de Computadores, entre outros. Possui material de apoio ao professor.",
    ),
  ];
}