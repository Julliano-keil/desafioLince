import 'dart:math';

void main() {
  final listaCompras = ListaDecompras();

  listaCompras.incluirItem01('Maçã', 5);
  listaCompras.incluirItem01('Pão', 2);
  listaCompras.incluirItem01('Leite', 3);

  listaCompras.separarcompras();

  final itemSemEstoque = listaCompras.escolherPendenteAleatorio();
  if (itemSemEstoque != null) {
    listaCompras.estoque.add(itemSemEstoque);
    listaCompras.desejado.remove(itemSemEstoque);
  }

  listaCompras.exibeComprados();
  listaCompras.mostrarProgresso();
}

class Compras {
  String nome;
  int quantidade;
  bool comprado;

  Compras(this.nome, this.quantidade) : comprado = false;
}

class ListaDecompras {
  List<Compras> desejado = [];
  List<Compras> comprados = [];
  List<Compras> estoque = [];

  void incluirItem01(String nome, int quantidade) {
    final valor01 = Compras(nome, quantidade);
    desejado.add(valor01);
    desejadosexibir();
  }

  void desejadosexibir() {
    desejado.forEach((element) {
      print('${element.nome} ${element.quantidade}');
    });

    //final totaldesejados = desejado;
  }

  void separarcompras() {
    final itensPendentes = List<Compras>.from(desejado);
    desejado.clear();

    for (final item in itensPendentes) {
      if (comprados.contains(item)) {
        comprados.add(item);
      } else {
        desejado.add(item);
      }
    }
  }

  void exibeComprados() {
    comprados.forEach((element) {
      print('comprados ${comprados.length}');
    });
  }

  Compras? escolherPendenteAleatorio() {
    if (desejado.isNotEmpty) {
      final random = Random();
      final index = random.nextInt(desejado.length);
      return desejado[index];
    } else {
      return null;
    }
  }

  void separarItensSemEstoque() {
    final itensPendentes = List<Compras>.from(desejado);
    desejado.clear();

    for (final item in itensPendentes) {
      if (estoque.contains(item)) {
        estoque.add(item);
      } else {
        desejado.add(item);
      }
    }
  }

  void mostrarProgresso() {
    final desejados = desejado.length + comprados.length;
    final progresso = '${desejado.length} / ${desejados}';

    print('progresso ${progresso}');
  }
}
