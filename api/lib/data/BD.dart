import 'package:api/domain/livros.dart';

class BD {
  static List <Livro> listaLivros = [
    Livro(
      imagem: "https://images-na.ssl-images-amazon.com/images/I/91z1xY4ppaL.jpg",
      titulo: "JavaScript - O guia definitivo",
      autor: "David Flanagan",
      sinopse: "Referência completa para programadores, JavaScript: O guia definitivo fornece uma ampla descrição da linguagem JavaScript básica e das APIs JavaScript do lado do cliente definidas pelos navegadores Web. Em sua 6ª edição, cuidadosamente reescrita para estar de acordo com as melhores práticas de desenvolvimento Web atuais, abrange ECMAScript 5 e HTML5 e traz novos capítulos que documentam jQuery e JavaScript do lado do servidor. Recomendado para programadores experientes que desejam aprender a linguagem de programação da Web e para programadores JavaScript que desejam ampliar seus conhecimentos e dominar a linguagem, este é o guia do programador e manual de referência de JavaScript completo e definitivo.",
      id: 1,    
    ),
    Livro(
      imagem: "https://images-na.ssl-images-amazon.com/images/I/51ljjwmnAhL._SX352_BO1,204,203,200_.jpg",
      titulo: "Introdução à programação: 500 Algorítmos Resolvidos",
      autor: "Anita Lopes Guto Garcia",
      sinopse: "Esta obra é indicada para um público iniciante em programação imperativa de computadores e para todos os estudantes que estão tendo dificuldades de aprender algoritmos pelo método tradicional. O objetivo deste livro é apresentar 500 exercícios resolvidos para que o aluno possa então se familiarizar com uma nova linguagem, entendê-la e a partir daí, começar a achar suas próprias soluções. O livro possui conceitos teóricos sobre algoritmos de uma forma bem rápida e resumida.Introdução à programação está dividido por assunto e organizado em 6 grandes blocos: * o primeiro, abrange algoritmos do cotidiano; * no segundo, somente algoritmos que usam funções, comando de atribuição, de entrada e saída; * no terceiro bloco, o comando de seleção; * no quarto bloco, os comandos de repetição; * no quinto os algoritmos que manipulam vetores e matrizes e, no sexto, algoritmos utilizando função.No apêndice foram incluídos problemas de raciocínio lógico e uma ferramenta para testar os algoritmos no computador.",
      id: 2
    ),
    Livro(
      imagem: "https://images-na.ssl-images-amazon.com/images/I/81x-nHq0GXL.jpg",
      titulo: "Análise de Tráfego em Redes TCP/IP",
      autor: "João Eriberto Mota Filho",
      sinopse: "O grande objetivo deste livro é mostrar como realizar a análise de tráfego em redes. A nova geração IP (IPv6) também é abordada com certa profundidade, garantindo um bom entendimento sobre essa tecnologia. Este livro utiliza o tcpdump, exaustivamente, para demonstrar a teoria com base em capturas de tráfego e, consequentemente, ensinar sua análise. Todo o trabalho está dividido em uma introdução e cinco partes, a saber: conceitos básicos; protocolos básicos em redes TCP/IP e sua análise; conhecimentos específicos em redes TCP/IP e sua análise; tráfegos diversos e sistemas específicos; apêndices. É feita uma ampla abordagem sobre protocolos de rede e assuntos correlatos, como IPv4, IPv6, TCP, UDP, ICMP, Ethernet, ARP e NDP, Modelo OSI, roteamento em redes, bridges e sistemas de firewall. Também serão realizados trabalhos com simuladores de redes e programas para detectar invasões. Por seu conteúdo, este livro poderá ser utilizado tanto por autodidatas quanto por universitários de graduação e pós-graduação. É um livro direcionado a todos que empregam TCP/IP dentro de uma rede de computadores, independentemente do sistema operacional utilizado. A análise de tráfego poderá ser feita em qualquer ambiente e os conhecimentos aqui disponibilizados são universais.",
      id: 3
    ),
    Livro(
      imagem: "https://images-na.ssl-images-amazon.com/images/I/415UgDFBjXL._SX371_BO1,204,203,200_.jpg",
      titulo: "PROTOCOLOS E SERVIÇOS DE REDES",
      autor: "Lindenberg Barros de Souza",
      sinopse: "Neste livro, o leitor conhecerá os conceitos e os fundamentos dos protocolos de comunicação e os serviços de transmissão de dados em redes públicas oferecidos por empresas de telecomunicações, bem como a conectividade entre equipamentos adotados na maioria das redes, em especial os protocolos da arquitetura TCP/IP. São apresentados ainda o frame-relay, o X.25, o MPLS, o HDLC, o IP e o Ethernet CSMA, além de wireless e protocolos de roteamento de dados utilizados em roteadores, como RIP e OSPF. O conteúdo pode ser aplicado para os cursos técnicos em Informática, Informática para Internet, Multimeios Didáticos, Manutenção e Suporte em Informática, Redes de Computadores, entre outros. Possui material de apoio ao professor.",
      id: 4
    ),
    Livro(
      imagem: "https://images-na.ssl-images-amazon.com/images/I/61nQMuYi8pL.jpg",
      titulo: "ALGORÍTMOS E LÓGICA DE PROGRAMAÇÃO",
      autor: "Ricardo Concílio; Marcelo Gomes, Márcio Soares; Marco Souza",
      sinopse: "Com linguagem simples e didática – sem, no entanto, fugir da complexidade do assunto ?, o livro procura tornar a lógica de programação prática, além de mostrar aos estudantes um caminho mais adequado na construção dos algoritmos. A abstração de procedimentos e dados é um dos maiores problemas para os estudantes nos cursos introdutórios, e, para tentar escapar das dificuldades, os autores utilizam uma arquitetura de computador simples, baseada na arquitetura de Von Neumann, de maneira a fixar os conceitos relacionados à operação de computadores. Um dos principais objetivos do livro é fazer que o estudante consiga no futuro relacionar os aspectos abstratos da computação com sua implementação, e ainda incentivar a necessidade de escrever os algoritmos antes de sua implementação propriamente dita. A descrição dos algoritmos no texto é mostrada por meio de fluxogramas. Também são apresentadas mais duas formas de representação de algoritmos: diagramas de Nassi-Schneidermann e o pseudocódigo Portugol, que emprega descrição textual e estruturada da solução de um problema. São apresentadas três maneiras de representação de algoritmos, tornando a fixação dos conceitos ainda mais fácil. A obra traz figuras, ilustrações e fotografias que enriquecem o conteúdo. Nesta 2ª edição revista e ampliada foram acrescentadas resoluções de alguns dos exercícios propostos que complementam o texto e o aprendizado.",
      id: 5
    ),
    Livro(
      imagem: "https://images-na.ssl-images-amazon.com/images/I/41cwVOyRcxL._SX351_BO1,204,203,200_.jpg",
      titulo: "LÓGICA DE PRORAMAÇÃO E ESTRUTURA DE DADOS",
      autor: "Sandra Puga e Gerson Risseti",
      sinopse: "Com linguagem simples e didática – sem, no entanto, fugir da complexidade do assunto ?, o livro procura tornar a lógica de programação prática, além de mostrar aos estudantes um caminho mais adequado na construção dos algoritmos. A abstração de procedimentos e dados é um dos maiores problemas para os estudantes nos cursos introdutórios, e, para tentar escapar das dificuldades, os autores utilizam uma arquitetura de computador simples, baseada na arquitetura de Von Neumann, de maneira a fixar os conceitos relacionados à operação de computadores. Um dos principais objetivos do livro é fazer que o estudante consiga no futuro relacionar os aspectos abstratos da computação com sua implementação, e ainda incentivar a necessidade de escrever os algoritmos antes de sua implementação propriamente dita. A descrição dos algoritmos no texto é mostrada por meio de fluxogramas. Também são apresentadas mais duas formas de representação de algoritmos: diagramas de Nassi-Schneidermann e o pseudocódigo Portugol, que emprega descrição textual e estruturada da solução de um problema. São apresentadas três maneiras de representação de algoritmos, tornando a fixação dos conceitos ainda mais fácil. A obra traz figuras, ilustrações e fotografias que enriquecem o conteúdo. Nesta 2ª edição revista e ampliada foram acrescentadas resoluções de alguns dos exercícios propostos que complementam o texto e o aprendizado.",
      id: 6
    ),
    Livro(
      imagem: "https://m.media-amazon.com/images/I/51JdIDWhEHL._SX260_.jpg",
      titulo: "A ERA DA INTELIGÊNCIA ARTIFICIAL",
      autor: "Marco Iansiti e Karim R LAKHANI",
      sinopse: "As organizações centradas em Inteligência Artificial exibem uma nova arquitetura operacional, redefinindo como criam, capturam, compartilham e entregam valor. Marco Iansiti e Karim R. Lakhani mostram como reinventar a empresa a partir de dados, análises e IA removendo as restrições tradicionais de escala, escopo e aprendizagem que restringiram o crescimento dos negócios por centenas de anos. Do Airbnb ao Ant Financial, da Microsoft a Amazon, a pesquisa mostra como os processos com base em IA são muito mais escaláveis do que os processos tradicionais, permitindo um aumento massivo de escopo, possibilitando que as empresas ultrapassem os limites da indústria e criem oportunidades poderosas de aprendizagem para conduzir com mais precisão previsões complexas e sofisticadas.Quando as restrições operacionais tradicionais são removidas, a estratégia se torna um jogo totalmente novo, cujas regras e resultados prováveis este livro deixará claros. Iansiti e Lakhani apresentam uma estrutura para repensar os modelos operacionais e de negócios; explicam como as 'colisões' entre empresas digitais/baseadas em Inteligência Artificial e tradicionais/analógicas estão remodelando a concorrência, alterando a estrutura de nossa economia e forçando as empresas tradicionais a reorganizar seus modelos operacionais; explicam as oportunidades e os riscos criados por empresas digitais; e descrevem os novos desafios e responsabilidades para os líderes de empresas digitais e tradicionais Repleto de exemplos – incluindo muitos concorrentes globais mais poderosos e inovadores, impulsionados por IA – e com base na pesquisa em centenas de empresas em muitos setores, este é um guia essencial para repensar como sua empresa compete e opera na Era da Inteligência Artificial.",
      id: 7
    ),
    Livro(
      imagem: "https://images-na.ssl-images-amazon.com/images/I/81XODfVpZ5L.jpg",
      titulo: "COMPUTAÇÃO QUÂNTICA",
      autor: "Claude Falbriard e Ines Brosso",
      sinopse: "",
      id: 8
    ),
    Livro(
      imagem: "https://images-na.ssl-images-amazon.com/images/I/71CMylJf8qL.jpg",
      titulo: "Pense em python",
      autor: "Allen B. Downey",
      sinopse: "Se você quer aprender como programar, usar Python é uma ótima forma de começar. Este guia prático apresenta a linguagem passo a passo, começando com conceitos de programação básicos antes de chegar a funções, recursividade, estruturas de dados e design orientado a objeto. Esta edição e seu código de apoio foram atualizados para o Python 3. Com os exercícios em cada capítulo, você testará conceitos de programação conforme os aprende. Pense em Python é ideal para estudantes de ensino médio e universitários ou para autodidatas, estudantes educados em casa e profissionais que precisam aprender fundamentos de programação. Os principiantes que queiram apenas ter uma noção básica, podem começar a usar Python em um navegador. Comece com o básico, incluindo sintaxe e semântica da linguagem. Tenha uma definição clara de cada conceito de programação. Aprenda sobre valores, variáveis, instruções, funções e estruturas de dados em uma progressão lógica. Descubra como trabalhar com arquivos e bancos de dados. Entenda objetos, métodos e programação orientada a objeto. Use técnicas de depuração para corrigir erros de sintaxe, tempo de execução e semânticos. Explore funções, estruturas de dados e algoritmos com uma série de estudos de caso. O código de exemplo deste livro é mantido em um repositório GitHub público, no qual os usuários podem carregá-lo e modificá-lo facilmente.",
      id: 9
    ),
    Livro(
      imagem: "https://images-na.ssl-images-amazon.com/images/I/61fnQupEsHL.jpg",
      titulo: "HTML 5 - Entendendo e Executando",
      autor: "Mark Pilgrim",
      sinopse: "",
      id: 10
    ),

  ];
}