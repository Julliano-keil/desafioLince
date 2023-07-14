// NAO PODE SER MODIFICADO
// -------------------------------------------------------------
import 'dart:math' as math;

void main() {
  final meioDeComunicacao = aleatorio();
  meioDeComunicacao.fazerLigacao('(47) 99876-5432');
}

MeioDeComunicacao aleatorio() {
  final meiosDeComunicacao = <MeioDeComunicacao>[
    Telefone(),
    Celular(),
    Orelhao(),
    Celular01()
  ];

  final random = math.Random();

  return meiosDeComunicacao[random.nextInt(
    meiosDeComunicacao.length,
  )];
}

abstract class MeioDeComunicacao {
  void fazerLigacao(String numero);
}

class Telefone implements MeioDeComunicacao {
  @override
  void fazerLigacao(String numero) {
    print('[Telefone] ligando para $numero');
  }
}

class Celular implements MeioDeComunicacao {
  @override
  void fazerLigacao(String numero) {
    print('[celular] : ligando para $numero');
  }
}

class Orelhao implements MeioDeComunicacao {
  @override
  void fazerLigacao(String numero) {
    print('[orelhao] ligando para $numero');
  }
}

class Celular01 implements MeioDeComunicacao {
  @override
  void fazerLigacao(String numero) {
    print('[Celular 01] ligando para $numero');
  }
}
