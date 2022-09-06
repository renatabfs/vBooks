import 'package:api/domain/livros.dart';

class FavoritosBD {
  static List<Livro> listaFavoritos = [
    Livro(
        imagem:
            "https://images-na.ssl-images-amazon.com/images/I/81x-nHq0GXL.jpg",
        titulo: "Análise de Tráfego em Redes TCP/IP",
        autor: "João Eriberto Mota Filho",
        sinopse:
            "O grande objetivo deste livro é mostrar como realizar a análise de tráfego em redes. A nova geração IP (IPv6) também é abordada com certa profundidade, garantindo um bom entendimento sobre essa tecnologia. Este livro utiliza o tcpdump, exaustivamente, para demonstrar a teoria com base em capturas de tráfego e, consequentemente, ensinar sua análise. Todo o trabalho está dividido em uma introdução e cinco partes, a saber: conceitos básicos; protocolos básicos em redes TCP/IP e sua análise; conhecimentos específicos em redes TCP/IP e sua análise; tráfegos diversos e sistemas específicos; apêndices. É feita uma ampla abordagem sobre protocolos de rede e assuntos correlatos, como IPv4, IPv6, TCP, UDP, ICMP, Ethernet, ARP e NDP, Modelo OSI, roteamento em redes, bridges e sistemas de firewall. Também serão realizados trabalhos com simuladores de redes e programas para detectar invasões. Por seu conteúdo, este livro poderá ser utilizado tanto por autodidatas quanto por universitários de graduação e pós-graduação. É um livro direcionado a todos que empregam TCP/IP dentro de uma rede de computadores, independentemente do sistema operacional utilizado. A análise de tráfego poderá ser feita em qualquer ambiente e os conhecimentos aqui disponibilizados são universais.",
        id: 3),
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
            "data:image/jpeg;base64,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",
        titulo:
            "Desenvolvendo Websites com PHP: Aprenda a criar Websites dinâmicos e interativos com PHP e bancos de dados",
        autor: "Juliano Niederauer",
        sinopse:
            "Desenvolvendo Websites com PHP apresenta técnicas de programação fundamentais para o desenvolvimento de sites dinâmicos e interativos. Você aprenderá a desenvolver sites com uma linguagem utilizada em milhões de sites no mundo inteiro. O livro abrange desde noções básicas de programação até a criação e manutenção de bancos de dados, mostrando como são feitas inclusões, exclusões, alterações e consultas a tabelas de uma base de dados. \n O autor apresenta diversos exemplos de programas para facilitar a compreensão da linguagem. Nesta obra, você irá encontrar os seguintes tópicos: \n O que é PHP e quais são suas características; \n Conceitos básicos e avançados de programação em PHP; \n Como manipular diversos tipos de dados com o PHP; \n Criação de programas orientados a objetos (OOP); \n Comandos PHP em conjunto com tags HTML; \n Utilização de includes para aumentar o dinamismo de seu site; \n Como tratar os dados enviados por um formulário HTML; \n Utilidade das variáveis de ambiente no PHP; \n Criação de banco de dados em MySQL, PostgreSQL ou SQLite; \n Comandos SQL para acessar o banco de dados via PHP; \n Como criar um sistema de username/password para seu site; \n Utilização de cookies e sessões; \n Leitura e gravação de dados em arquivos-texto; \n Como enviar e-mails pelo PHP.",
        id: 16),
  ];
}