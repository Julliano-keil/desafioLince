import 'dart:collection';

void main() {
  final baralho = Baralho();

  baralho.AddCarta(Cartas('paus', ' A ♣'));
  baralho.AddCarta(Cartas('copas', 'A ♥ '));
  baralho.AddCarta(Cartas('Espadas', 'A ♠'));
  baralho.AddCarta(Cartas('ouro', ' A ♦'));

  final tamanhoBaralho = baralho.tamanhoBaralho;
  for (var i = 0; i < tamanhoBaralho; i++) {
    final cartaRemovida = baralho.tiraCarta();
    print('Carta removida: ${cartaRemovida.valor}');
  }
}

class Baralho {
  final Queue<Cartas> baralho = Queue<Cartas>();
  int get tamanhoBaralho => baralho.length;

  void AddCarta(Cartas carta) {
    baralho.add(carta);
  }

  Cartas tiraCarta() {
    return baralho.removeFirst();
  }
}

class Cartas {
  String naipe;
  String valor;
  Cartas(this.naipe, this.valor);
}
