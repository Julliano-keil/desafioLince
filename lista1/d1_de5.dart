import 'dart:math' as math;

void main() {
  List<String> nome = [
    'Ana',
    'Maria',
    'Francisco',
    'Joao',
    'Pedro',
    'Gabriel',
    'Rafaela',
    'Marcio',
    'Jose',
    'Carlos',
    'Patricia',
    'Helena',
    'Camila',
    'Mateus',
    'Gabriel',
    'Samuel',
    'Karina',
    'Antonio',
    'Daniel',
    'Joel',
    'Cristiana',
    'Sebastiao',
    'Paula'
  ];

  List<String> sobreNome = [
    'Silva',
    'Souza',
    'Almeida',
    'Azevedo',
    'ragaB,',
    'Barros',
    ' Campos',
    ' Cardoso',
    'Costa',
    'Santos',
    'Rodrigues',
    'Ferreira',
    'Alves',
    'Pereira',
    'Lima',
    'Gomes',
    'Ribeiro',
    'Carvalho',
    'Lopes',
    'Barbosa'
  ];
  final random = math.Random();
  final nomeGerado = nome[random.nextInt(nome.length)];
  final sobrenomeGerado = sobreNome[random.nextInt(sobreNome.length)];
  final nomeCompletoGerado = '$nomeGerado $sobrenomeGerado';

  print('Nome gerado: $nomeCompletoGerado');
}
