import 'package:api/domain/livros.dart';
import 'package:sqflite/sqflite.dart';

import 'db.dart';

class LivrosBD {
  late Database db;

  Future<void> initDB() async {
    db = await DBHelper().initDB();
  }

  Future<List<Livro>> getLivros() async {
    await initDB();
    String sql = 'SELECT * FROM LIVROS';
    var result = await db.rawQuery(sql);

    List<Livro> lista = <Livro>[];
    for (var json in result) {
      Livro livro = Livro.fromJson(json);
      lista.add(livro);
    }

    return lista;
  }

  Future<List<Livro>> getSearchedBook(String keyword) async {
    String sql = 'SELECT * FROM LIVROS WHERE titulo LIKE "%$keyword%"';
    await initDB();
    var result = await db.rawQuery(sql);
    print("Pesquisou o livro: $keyword");
    List<Livro> lista = <Livro>[];
    for (var json in result) {
      Livro livro = Livro.fromJson(json);
      lista.add(livro);
    }

    return lista;
  }

  /*
  static List<Livro> listaLivros = [
    Livro(
      imagem:
          "https://images-na.ssl-images-amazon.com/images/I/91z1xY4ppaL.jpg",
      titulo: "JavaScript - O guia definitivo",
      autor: "David Flanagan",
      sinopse:
          "Referência completa para programadores, JavaScript: O guia definitivo fornece uma ampla descrição da linguagem JavaScript básica e das APIs JavaScript do lado do cliente definidas pelos navegadores Web. Em sua 6ª edição, cuidadosamente reescrita para estar de acordo com as melhores práticas de desenvolvimento Web atuais, abrange ECMAScript 5 e HTML5 e traz novos capítulos que documentam jQuery e JavaScript do lado do servidor. Recomendado para programadores experientes que desejam aprender a linguagem de programação da Web e para programadores JavaScript que desejam ampliar seus conhecimentos e dominar a linguagem, este é o guia do programador e manual de referência de JavaScript completo e definitivo.",
      id: 1,
    ),
    Livro(
        imagem:
            "https://images-na.ssl-images-amazon.com/images/I/51ljjwmnAhL._SX352_BO1,204,203,200_.jpg",
        titulo: "Introdução à programação: 500 Algorítmos Resolvidos",
        autor: "Anita Lopes Guto Garcia",
        sinopse:
            "Esta obra é indicada para um público iniciante em programação imperativa de computadores e para todos os estudantes que estão tendo dificuldades de aprender algoritmos pelo método tradicional. O objetivo deste livro é apresentar 500 exercícios resolvidos para que o aluno possa então se familiarizar com uma nova linguagem, entendê-la e a partir daí, começar a achar suas próprias soluções. O livro possui conceitos teóricos sobre algoritmos de uma forma bem rápida e resumida.Introdução à programação está dividido por assunto e organizado em 6 grandes blocos: * o primeiro, abrange algoritmos do cotidiano; * no segundo, somente algoritmos que usam funções, comando de atribuição, de entrada e saída; * no terceiro bloco, o comando de seleção; * no quarto bloco, os comandos de repetição; * no quinto os algoritmos que manipulam vetores e matrizes e, no sexto, algoritmos utilizando função.No apêndice foram incluídos problemas de raciocínio lógico e uma ferramenta para testar os algoritmos no computador.",
        id: 2),
    Livro(
        imagem:
            "https://images-na.ssl-images-amazon.com/images/I/81x-nHq0GXL.jpg",
        titulo: "Análise de Tráfego em Redes TCP/IP",
        autor: "João Eriberto Mota Filho",
        sinopse:
            "O grande objetivo deste livro é mostrar como realizar a análise de tráfego em redes. A nova geração IP (IPv6) também é abordada com certa profundidade, garantindo um bom entendimento sobre essa tecnologia. Este livro utiliza o tcpdump, exaustivamente, para demonstrar a teoria com base em capturas de tráfego e, consequentemente, ensinar sua análise. Todo o trabalho está dividido em uma introdução e cinco partes, a saber: conceitos básicos; protocolos básicos em redes TCP/IP e sua análise; conhecimentos específicos em redes TCP/IP e sua análise; tráfegos diversos e sistemas específicos; apêndices. É feita uma ampla abordagem sobre protocolos de rede e assuntos correlatos, como IPv4, IPv6, TCP, UDP, ICMP, Ethernet, ARP e NDP, Modelo OSI, roteamento em redes, bridges e sistemas de firewall. Também serão realizados trabalhos com simuladores de redes e programas para detectar invasões. Por seu conteúdo, este livro poderá ser utilizado tanto por autodidatas quanto por universitários de graduação e pós-graduação. É um livro direcionado a todos que empregam TCP/IP dentro de uma rede de computadores, independentemente do sistema operacional utilizado. A análise de tráfego poderá ser feita em qualquer ambiente e os conhecimentos aqui disponibilizados são universais.",
        id: 3),
    Livro(
        imagem:
            "https://images-na.ssl-images-amazon.com/images/I/415UgDFBjXL._SX371_BO1,204,203,200_.jpg",
        titulo: "PROTOCOLOS E SERVIÇOS DE REDES",
        autor: "Lindenberg Barros de Souza",
        sinopse:
            "Neste livro, o leitor conhecerá os conceitos e os fundamentos dos protocolos de comunicação e os serviços de transmissão de dados em redes públicas oferecidos por empresas de telecomunicações, bem como a conectividade entre equipamentos adotados na maioria das redes, em especial os protocolos da arquitetura TCP/IP. São apresentados ainda o frame-relay, o X.25, o MPLS, o HDLC, o IP e o Ethernet CSMA, além de wireless e protocolos de roteamento de dados utilizados em roteadores, como RIP e OSPF. O conteúdo pode ser aplicado para os cursos técnicos em Informática, Informática para Internet, Multimeios Didáticos, Manutenção e Suporte em Informática, Redes de Computadores, entre outros. Possui material de apoio ao professor.",
        id: 4),
    Livro(
        imagem:
            "https://images-na.ssl-images-amazon.com/images/I/61nQMuYi8pL.jpg",
        titulo: "ALGORÍTMOS E LÓGICA DE PROGRAMAÇÃO",
        autor: "Ricardo Concílio; Marcelo Gomes, Márcio Soares; Marco Souza",
        sinopse:
            "Com linguagem simples e didática – sem, no entanto, fugir da complexidade do assunto ?, o livro procura tornar a lógica de programação prática, além de mostrar aos estudantes um caminho mais adequado na construção dos algoritmos. A abstração de procedimentos e dados é um dos maiores problemas para os estudantes nos cursos introdutórios, e, para tentar escapar das dificuldades, os autores utilizam uma arquitetura de computador simples, baseada na arquitetura de Von Neumann, de maneira a fixar os conceitos relacionados à operação de computadores. Um dos principais objetivos do livro é fazer que o estudante consiga no futuro relacionar os aspectos abstratos da computação com sua implementação, e ainda incentivar a necessidade de escrever os algoritmos antes de sua implementação propriamente dita. A descrição dos algoritmos no texto é mostrada por meio de fluxogramas. Também são apresentadas mais duas formas de representação de algoritmos: diagramas de Nassi-Schneidermann e o pseudocódigo Portugol, que emprega descrição textual e estruturada da solução de um problema. São apresentadas três maneiras de representação de algoritmos, tornando a fixação dos conceitos ainda mais fácil. A obra traz figuras, ilustrações e fotografias que enriquecem o conteúdo. Nesta 2ª edição revista e ampliada foram acrescentadas resoluções de alguns dos exercícios propostos que complementam o texto e o aprendizado.",
        id: 5),
    Livro(
        imagem:
            "https://images-na.ssl-images-amazon.com/images/I/41cwVOyRcxL._SX351_BO1,204,203,200_.jpg",
        titulo: "LÓGICA DE PRORAMAÇÃO E ESTRUTURA DE DADOS",
        autor: "Sandra Puga e Gerson Risseti",
        sinopse:
            "Com linguagem simples e didática – sem, no entanto, fugir da complexidade do assunto ?, o livro procura tornar a lógica de programação prática, além de mostrar aos estudantes um caminho mais adequado na construção dos algoritmos. A abstração de procedimentos e dados é um dos maiores problemas para os estudantes nos cursos introdutórios, e, para tentar escapar das dificuldades, os autores utilizam uma arquitetura de computador simples, baseada na arquitetura de Von Neumann, de maneira a fixar os conceitos relacionados à operação de computadores. Um dos principais objetivos do livro é fazer que o estudante consiga no futuro relacionar os aspectos abstratos da computação com sua implementação, e ainda incentivar a necessidade de escrever os algoritmos antes de sua implementação propriamente dita. A descrição dos algoritmos no texto é mostrada por meio de fluxogramas. Também são apresentadas mais duas formas de representação de algoritmos: diagramas de Nassi-Schneidermann e o pseudocódigo Portugol, que emprega descrição textual e estruturada da solução de um problema. São apresentadas três maneiras de representação de algoritmos, tornando a fixação dos conceitos ainda mais fácil. A obra traz figuras, ilustrações e fotografias que enriquecem o conteúdo. Nesta 2ª edição revista e ampliada foram acrescentadas resoluções de alguns dos exercícios propostos que complementam o texto e o aprendizado.",
        id: 6),
    Livro(
        imagem: "https://m.media-amazon.com/images/I/51JdIDWhEHL._SX260_.jpg",
        titulo: "A ERA DA INTELIGÊNCIA ARTIFICIAL",
        autor: "Marco Iansiti e Karim R LAKHANI",
        sinopse:
            "As organizações centradas em Inteligência Artificial exibem uma nova arquitetura operacional, redefinindo como criam, capturam, compartilham e entregam valor. Marco Iansiti e Karim R. Lakhani mostram como reinventar a empresa a partir de dados, análises e IA removendo as restrições tradicionais de escala, escopo e aprendizagem que restringiram o crescimento dos negócios por centenas de anos. Do Airbnb ao Ant Financial, da Microsoft a Amazon, a pesquisa mostra como os processos com base em IA são muito mais escaláveis do que os processos tradicionais, permitindo um aumento massivo de escopo, possibilitando que as empresas ultrapassem os limites da indústria e criem oportunidades poderosas de aprendizagem para conduzir com mais precisão previsões complexas e sofisticadas.Quando as restrições operacionais tradicionais são removidas, a estratégia se torna um jogo totalmente novo, cujas regras e resultados prováveis este livro deixará claros. Iansiti e Lakhani apresentam uma estrutura para repensar os modelos operacionais e de negócios; explicam como as 'colisões' entre empresas digitais/baseadas em Inteligência Artificial e tradicionais/analógicas estão remodelando a concorrência, alterando a estrutura de nossa economia e forçando as empresas tradicionais a reorganizar seus modelos operacionais; explicam as oportunidades e os riscos criados por empresas digitais; e descrevem os novos desafios e responsabilidades para os líderes de empresas digitais e tradicionais Repleto de exemplos – incluindo muitos concorrentes globais mais poderosos e inovadores, impulsionados por IA – e com base na pesquisa em centenas de empresas em muitos setores, este é um guia essencial para repensar como sua empresa compete e opera na Era da Inteligência Artificial.",
        id: 7),
    Livro(
        imagem:
            "https://images-na.ssl-images-amazon.com/images/I/81XODfVpZ5L.jpg",
        titulo: "COMPUTAÇÃO QUÂNTICA",
        autor: "Claude Falbriard e Ines Brosso",
        sinopse: "",
        id: 8),
    Livro(
        imagem:
            "https://images-na.ssl-images-amazon.com/images/I/71CMylJf8qL.jpg",
        titulo: "Pense em python",
        autor: "Allen B. Downey",
        sinopse:
            "Se você quer aprender como programar, usar Python é uma ótima forma de começar. Este guia prático apresenta a linguagem passo a passo, começando com conceitos de programação básicos antes de chegar a funções, recursividade, estruturas de dados e design orientado a objeto. Esta edição e seu código de apoio foram atualizados para o Python 3. Com os exercícios em cada capítulo, você testará conceitos de programação conforme os aprende. Pense em Python é ideal para estudantes de ensino médio e universitários ou para autodidatas, estudantes educados em casa e profissionais que precisam aprender fundamentos de programação. Os principiantes que queiram apenas ter uma noção básica, podem começar a usar Python em um navegador. Comece com o básico, incluindo sintaxe e semântica da linguagem. Tenha uma definição clara de cada conceito de programação. Aprenda sobre valores, variáveis, instruções, funções e estruturas de dados em uma progressão lógica. Descubra como trabalhar com arquivos e bancos de dados. Entenda objetos, métodos e programação orientada a objeto. Use técnicas de depuração para corrigir erros de sintaxe, tempo de execução e semânticos. Explore funções, estruturas de dados e algoritmos com uma série de estudos de caso. O código de exemplo deste livro é mantido em um repositório GitHub público, no qual os usuários podem carregá-lo e modificá-lo facilmente.",
        id: 9),
    Livro(
        imagem:
            "https://images-na.ssl-images-amazon.com/images/I/61fnQupEsHL.jpg",
        titulo: "HTML 5 - Entendendo e Executando",
        autor: "Mark Pilgrim",
        sinopse:
            "Se você não conhece as novas características disponíveis no HTML5, agora é hora de descobrir. Este livro fornece informações práticas sobre como e porque a última versão dessa linguagem de marcação mudará significativamente a forma como você desenvolve para a Web. HTML5 é a próxima geração do HTML, sucedendo o HTML 4.01, XHTML 1.0 e XHTML 1.1. Fornece novas funções que são necessárias para os aplicativos web modernos. Ele também padroniza diversas características da plataforma web que os desenvolvedores web têm utilizado por anos, mas que nunca foram vericadas ou documentadas por um comitê de padronização. (Surpreenderia você descobrir que o objeto Window nunca foi formalmente documentado? Além das novas características, o HTML5 é a primeira tentativa de documentar formalmente muitos dos padrões “de facto” que os navegadores web têm suportado por anos.) Aprenda novos elementos semânticos como ' <header> ', ' <footer> ' e ' <section> '; Conheça o Canvas, uma nova superfície de desenho 2D que você pode programar com JavaScript; Incorpore vídeo em suas páginas web sem plug-ins de terceiros; Utilize Geolocation para permitir que os visitantes de seu aplicativo web compartilhem sua localização física; Aproveite a capacidade de armazenamento local muito além dos cookies; Construa aplicativos web off-line que funcionam mesmo depois do acesso à rede ter sido desconectado; Aprenda sobre diversos novos tipos de inserção para formulários web; Crie seus próprios vocabulários personalizados em HTML5 com microdados.",
        id: 10),
    Livro(
        imagem: "https://m.media-amazon.com/images/I/41IRFCLk-kL.jpg",
        titulo: "Código Limpo",
        autor: "Série de Robert C. Martin",
        sinopse:
            "Mesmo um código ruim pode funcionar. Mas se ele não for limpo, pode acabar com uma empresa de desenvolvimento. Perdem-se a cada ano horas incontáveis e recursos importantes devido a um código mal escrito. Mas não precisa ser assim. \n O renomado especialista em software, Robert C. Martin, apresenta um paradigma revolucionário com Código limpo: Habilidades Práticas do Agile Software. Martin se reuniou com seus colegas do Mentor Object para destilar suas melhores e mais ágeis práticas de limpar códigos 'dinamicamente' em um livro que introduzirá gradualmente dentro de você os valores da habilidade de um profissional de softwares e lhe tornar um programador melhor –mas só se você praticar. \n Que tipo de trabalho você fará? Você lerá códigos aqui, muitos códigos. E você deverá descobrir o que está correto e errado nos códigos. E, o mais importante, você terá de reavaliar seus valores profissionais e seu comprometimento com o seu ofício. \n Código limpo está divido em três partes. Na primeira há diversos capítulos que descrevem os princípios, padrões e práticas para criar um código limpo. \n A segunda parte consiste em diversos casos de estudo de complexidade cada vez maior. Cada um é um exercício para limpar um código – transformar o código base que possui alguns problemas em um melhor e eficiente. A terceira parte é a compensação: um único capítulo com uma lista de heurísticas e 'dores' reunidos durante a criação dos estudos de caso. O resultado será um conhecimento base que descreve a forma como pensamos quando criamos, lemos e limpamos um código. \n ler este livro os leitores saberão: \n ✔ Como distinguir um código bom de um ruim \n ✔ Como escrever códigos bons e como transformar um ruim em um bom \n ✔ Como criar bons nomes, boas funções, bons objetos e boas classes \n ✔ Como formatar o código para ter uma legibilidade máxima \n ✔ Como implementar completamente o tratamento de erro sem obscurecer a lógica  Como aplicar testes de unidade e praticar o desenvolvimento dirigido a testes Este livro é essencial para qualquer desenvolvedor, engenheiro de software, gerente de projeto, líder de equipes ou analistas de sistemas com interesse em construir códigos melhores.",
        id: 11),
    Livro(
        imagem: "https://m.media-amazon.com/images/I/41WH7HFsbzL.jpg",
        titulo: "O Programador Pragmático: De Aprendiz a Mestre",
        autor: "David Thomas",
        sinopse:
            "O Programador Pragmático ilustra as melhores práticas e as principais armadilhas do desenvolvimento de software. Destinado a todos envolvidos com programação, de codificadores iniciantes a programadores experientes e gerentes responsáveis por projetos de software, apresenta lições simples que promovem rápidas melhorias na produtividade pessoal, precisão e satisfação profissional.",
        id: 12),
    Livro(
        imagem:
            "https://images-na.ssl-images-amazon.com/images/I/41qeEtBu02L._SX357_BO1,204,203,200_.jpg",
        titulo:
            "Introdução à programação com Python – 3ª edição: Algoritmos e lógica de programação para iniciantes Nilo Ney Coutinho Menezes",
        autor: "Nilo Ney Coutinho Menezes",
        sinopse:
            "Este livro é orientado ao iniciante em programação. Os conceitos básicos de programação, como expressões, variáveis, repetições, decisões, listas, dicionários, conjuntos, funções, arquivos, classes, objetos e banco de dados com SQLite 3 são apresentados um a um com exemplos e exercícios. A obra visa a explorar a programação de computadores como ferramenta do dia a dia. Ela pode ser lida durante um curso de introdução à programação de computadores e usada como guia de estudo para autodidatas. Para aproveitamento pleno do conteúdo, apenas conhecimentos básicos de informática, como digitar textos, abrir e salvar arquivos, são suficientes. Todo software utilizado no livro pode ser baixado gratuitamente, sendo executado em Windows, Linux e Mac OS X. \n Embora a linguagem Python (versão +3.7) seja muito poderosa e repleta de recursos modernos de programação, este livro não pretende ensinar a linguagem em si, mas ensinar a programar. Alguns recursos da linguagem não foram utilizados para privilegiar os exercícios de lógica de programação e oferecer uma preparação mais ampla ao leitor para outras linguagens. Essa escolha não impediu a apresentação de recursos poderosos da linguagem, e, embora o livro não seja fundamentalmente uma obra de referência, o leitor encontrará várias notas e explicações de características específicas do Python, além da lógica de programação.",
        id: 13),
    Livro(
        imagem:
            "https://images-na.ssl-images-amazon.com/images/I/81csG1Z+6eL.jpg",
        titulo: "O Melhor do JavaScript",
        autor: "Douglas Crockford",
        sinopse:
            "A maior parte das linguagens de programação contém partes boas e ruins mas o JavaScript parece possuir mais partes ruins do que boas já que foi desenvolvido e lançado com pressa antes de ter a chance de ser refinado. Este livro arranca as características mais horrendas para revelar um subconjunto mais confiável legível e mais fácil de manter do que a linguagem como um todo e que pode ser usado para criar código verdadeiramente extensível e eficiente. O autor Douglas Crockford considerado O especialista em JavaScript pela comunidade de desenvolvimento identifica o grande número de boas idéias que fazem do JavaScript uma extraordinária linguagem de programação orientada a objetos. Infelizmente essas boas idéias (como funções tipificação fraca objetos dinâmicos e notação literal de objetos expressiva) estão misturadas com idéias ruins e outras simplesmente péssimas (como por exemplo um modelo de programação baseado em variáveis globais). Quando os applets falharam o JavaScript se tornou a linguagem padrão para a Internet. Sua popularidade é quase totalmente independente de suas qualidades como linguagem de programação. Em O Melhor do JavaScript Crockford penetra numa pilha de boas intenções e erros para dar a você uma análise detalhada de todas as partes genuinamente elegantes do JavaScript.",
        id: 14),
    Livro(
        imagem:
            "https://images-na.ssl-images-amazon.com/images/I/71nnLTh7VXL.jpg",
        titulo: "Python Fluente: Programação Clara, Concisa e Eficaz",
        autor: "Luciano Ramalho",
        sinopse:
            "A simplicidade de Python permite que você se torne produtivo rapidamente, porém isso muitas vezes significa que você não estará usando tudo que ela tem a oferecer. Com este guia prático, você aprenderá a escrever um código Python eficiente e idiomático aproveitando seus melhores recursos – alguns deles, pouco conhecidos. O autor Luciano Ramalho apresenta os recursos essenciais da linguagem e bibliotecas de Python mostrando como você pode tornar o seu código mais conciso, mais rápido e mais legível ao mesmo tempo.\n Muitos programadores experientes tentam dobrar o Python para que ele se enquadre em padrões aprendidos com outras linguagens e jamais descobrem os recursos do Python que estão além de sua experiência. Com este livro, esses programadores Python aprenderão a ser totalmente proficientes em Python 3. [...]",
        id: 15),
    Livro(
        imagem:
            "https://images-na.ssl-images-amazon.com/images/I/81jSsW0P15L.jpg",
        titulo:
            "Desenvolvendo Websites com PHP: Aprenda a criar Websites dinâmicos e interativos com PHP e bancos de dados",
        autor: "Juliano Niederauer",
        sinopse:
            "Desenvolvendo Websites com PHP apresenta técnicas de programação fundamentais para o desenvolvimento de sites dinâmicos e interativos. Você aprenderá a desenvolver sites com uma linguagem utilizada em milhões de sites no mundo inteiro. O livro abrange desde noções básicas de programação até a criação e manutenção de bancos de dados, mostrando como são feitas inclusões, exclusões, alterações e consultas a tabelas de uma base de dados. \n O autor apresenta diversos exemplos de programas para facilitar a compreensão da linguagem. Nesta obra, você irá encontrar os seguintes tópicos: \n O que é PHP e quais são suas características; \n Conceitos básicos e avançados de programação em PHP; \n Como manipular diversos tipos de dados com o PHP; \n Criação de programas orientados a objetos (OOP); \n Comandos PHP em conjunto com tags HTML; \n Utilização de includes para aumentar o dinamismo de seu site; \n Como tratar os dados enviados por um formulário HTML; \n Utilidade das variáveis de ambiente no PHP; \n Criação de banco de dados em MySQL, PostgreSQL ou SQLite; \n Comandos SQL para acessar o banco de dados via PHP; \n Como criar um sistema de username/password para seu site; \n Utilização de cookies e sessões; \n Leitura e gravação de dados em arquivos-texto; \n Como enviar e-mails pelo PHP.",
        id: 16),
    Livro(
        imagem:
            "https://images-na.ssl-images-amazon.com/images/I/51-vkXYYH4L.jpg",
        titulo:
            "Javascript e Jquery - Desenvolvimento de Interfaces Web Interativas",
        autor: "Jon Duckett",
        sinopse:
            "Bem-vindo ao ensino de JavaScript & jQuery. Você é iniciante em JavaScript, ou adicionou scripts a sua página web mas quer entender melhor como tudo funciona? Então este livro é para você. Não mostraremos apenas como ler e escrever em JavaScript, mas também ensinaremos o básico sobre programação de computadores de forma simples e visual. Tudo o que você precisa é entender um pouco sobre HTML e CSS. Este livro ensinará como tornar seus websites mais interativos, atraentes, e funcionais. Isso acontece ao combinar teoria de programação com exemplos que demonstram como o JavaScript e o jQuery são usados em sites populares. De forma rápida, você será capaz de pensar e programar como um profissional.APRENDA COMO:•Ler e escrever em JavaScript Tornar seus sites mais interativos;•Usar jQuery para simplificar seu código;•Recriar técnicas populares da web.TÉCNICAS INCLUSAS:•Apresentações de slides e janelas modais;•Aprimoramento de formulários e validações;•Como usar Ajax, APIs, e JSON;•Filtros, pesquisa e ordenação.",
        id: 17),
  ];*/
}
