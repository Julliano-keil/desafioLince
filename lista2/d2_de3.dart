void main() {
  final addmusica = BibliotecaDeMusicas();

  addmusica.adicionarMusicas(
      'Hotel California', 'Eagles', 'Hotel California555', 390);

  BibliotecaDeMusicas().imprimirMusicas();

  print('nuemero de musicas : ${BibliotecaDeMusicas().numerodemusicas()}');

  print('tempo de musicas em hrs : ${BibliotecaDeMusicas().tempoemhrs()}');

  print('musicas por titulo');
  final musicaporTitulo =
      BibliotecaDeMusicas().buscarporTitulo('Bohemian Rhapsody');
  BibliotecaDeMusicas().musicasX(musicaporTitulo);
  print('musicas por album');
  final musicaporAlbum =
      BibliotecaDeMusicas().buscarporALbum('A Night at the Opera');
  BibliotecaDeMusicas().musicasX(musicaporAlbum);
  print('musicas por Artista');
  final musicaporArtitista = BibliotecaDeMusicas().buscarporArtista('Queen');
  BibliotecaDeMusicas().musicasX(musicaporArtitista);
}

class Musicas {
  String titulo;
  String artista;
  String album;
  int duracao;

  Musicas(
    this.titulo,
    this.artista,
    this.album,
    this.duracao,
  );
}

class BibliotecaDeMusicas {
  final listaMusicas = <Musicas>[
    Musicas('Hotel California', 'Eagles', 'Hotel California', 390),
    Musicas('Bohemian Rhapsody', 'Queen', 'A Night at the Opera', 355),
    Musicas('Hotel California', 'Eagles', 'Hotel California', 390),
    Musicas('Bohemian Rhapsody', 'Queen', 'A Night at the Opera', 355),
    Musicas('Hotel California', 'Eagles', 'Hotel California', 390),
    Musicas('Bohemian Rhapsody', 'Queen', 'A Night at the Opera', 355)
  ];

  void adicionarMusicas(
      String titulo, String artista, String album, int duracao) {
    listaMusicas.add(Musicas(titulo, artista, album, duracao));
  }

  void imprimirMusicas() {
    print('imprime musicas !');
    for (var musicas in listaMusicas) {
      print(
          'album :${musicas.titulo} , Artista :  ${musicas.artista} , Album : ${musicas.album} , Duraçao : ${musicas.duracao}');
    }
  }

  int numerodemusicas() {
    return listaMusicas.length;
  }

  double tempoemhrs() {
    var duracaototal = 0;

    for (var musicas in listaMusicas) {
      duracaototal += musicas.duracao;
    }

    return duracaototal / 3600;
  }

  List<Musicas> buscarporArtista(String artista) {
    final musicas = <Musicas>[];
    for (var musica in listaMusicas) {
      if (musica.artista == musica.artista) {
        musicas.add(musica);
      }
    }
    return musicas;
  }

  List<Musicas> buscarporALbum(String album) {
    final musicas = <Musicas>[];
    for (var musica in listaMusicas) {
      if (musica.album == musica.album) {
        musicas.add(musica);
      }
    }
    return musicas;
  }

  List<Musicas> buscarporTitulo(String titulo) {
    final musicas = <Musicas>[];
    for (var musica in listaMusicas) {
      if (musica.titulo == musica.titulo) {
        musicas.add(musica);
      }
    }
    return musicas;
  }

  void musicasX(List<Musicas> musicas) {
    if (musicas.isEmpty) {
      print('nao a musicas');
    } else {
      print('musicas encontradas');
      for (var musica in listaMusicas) {
        print(
            'album :${musica.titulo} , Artista :  ${musica.artista} , Album : ${musica.album} , Duraçao : ${musica.duracao}');
      }
    }
  }
}
