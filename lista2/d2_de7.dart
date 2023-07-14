import 'dart:collection';
import 'dart:math';

void main() {
  final filaMercado = Atendimento();

  // Adicionando clientes na fila
  print("\n Entrando na fila ");
  for (int i = 0; i < 10; i++) {
    String cliente = GerarNomeAleatorio.geradornome();
    String sobrenome = GerarNomeAleatorio.geradorsobrenome();
    var pessoa = PessoaNAfila(cliente, sobrenome);
    filaMercado.entrounaFila(pessoa);
  }

  print("\n - sendo atendido");
  while (filaMercado.fila > 0) {
    var pessoa = filaMercado.saiudafila();
    print("Atendendo ${pessoa.nome} ${pessoa.sobrenome}");
  }
}

class Atendimento {
  final Queue<PessoaNAfila> pessoafila = Queue<PessoaNAfila>();

  int get fila => pessoafila.length;

  void entrounaFila(PessoaNAfila pessoa) {
    print("${pessoa.nome} ${pessoa.sobrenome} entrou na fila");
    pessoafila.add(pessoa);
  }

  PessoaNAfila saiudafila() {
    return pessoafila.removeFirst();
  }
}

class GerarNomeAleatorio {
  static String geradornome() {
    final random = Random();
    var nomes = [
      'João',
      'Gabriel',
      'Mateus',
      'Lucas',
      'Hua',
      'Ana',
      'Maria',
      'Emyly',
      'Meloryn',
      'Catia'
    ];
    return nomes[random.nextInt(nomes.length)];
  }

  static String geradorsobrenome() {
    final random = Random();
    var sobrenomes = [
      'Souza',
      'Ferreti',
      'XYZ',
      'Alcantra',
      'Farias',
      'Tesla',
      'Silva',
      'LWHW',
      'Tesla'
    ];
    return sobrenomes[random.nextInt(sobrenomes.length)];
  }
}

class PessoaNAfila {
  String nome;
  String sobrenome;
  PessoaNAfila(this.nome, this.sobrenome);
}
