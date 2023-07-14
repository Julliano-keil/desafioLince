import 'dart:math';

void main() {
  final pessoa = Pessoa();
  final fornecedores = [
    FornecedorDeBebidas(),
    FornecedorDeBolos(),
    FornecedorDeSaladas(),
    FornecedorDeSanduiches(),
    FornecedorUltraCaloricos()
  ];

  pessoa._caloriaInicial = Random().nextInt(2000);

  // pessoa._caloriasConsumidas =
  //     pessoa._caloriaInicial + pessoa._caloriasConsumidas;

  print('caloria inicial: ${pessoa._caloriaInicial}');

  // Consumindo produtos fornecidos
  for (var i = 0; i < 5; i++) {
    final fornecedorAleatorio = Random().nextInt(fornecedores.length);
    final fornecedor = fornecedores[fornecedorAleatorio];
    pessoa.refeicao(fornecedor);
  }

  pessoa.informacoes();
}

class Produto {
  Produto(this.nome, this.calorias);

  /// Nome deste produto
  final String nome;

  /// Total de calorias
  final int calorias;
}

abstract class Fornecedor {
  Produto fornecer();
}

class FornecedorDeBebidas implements Fornecedor {
  final _random = Random();
  final _bebidasDisponiveis = <Produto>[
    Produto('Agua', 0),
    Produto('Refrigerante', 200),
    Produto('Suco de fruta', 100),
    Produto('Energetico', 135),
    Produto('Cafe', 60),
    Produto('Cha', 35),
  ];

  /// Retorna um produto que pode ser consumido por um consumidor
  Produto fornecer() {
    return _bebidasDisponiveis[_random.nextInt(_bebidasDisponiveis.length)];
  }
}

class FornecedorDeSanduiches implements Fornecedor {
  final _random = Random();
  final _sanduiches = <Produto>[
    Produto('sanduba de frango', 200),
    Produto('sanduba de almondega', 200),
    Produto('sanduba de maionese', 100),
    Produto('sanduba de pizza', 135),
    Produto('sanduba de mortandela', 60),
    Produto('sanduba de rizoto', 35),
  ];
  @override
  Produto fornecer() {
    return _sanduiches[_random.nextInt(_sanduiches.length)];
  }
}

class FornecedorDeBolos implements Fornecedor {
  final _random = Random();
  final _bolos = <Produto>[
    Produto('bolo de limao', 100),
    Produto('bolo de amora', 200),
    Produto('bolo de gergilin', 100),
    Produto('bolo de fuba', 100),
    Produto('bolo de goiaba', 300),
    Produto('bolo de chocolate', 50),
  ];

  @override
  Produto fornecer() {
    return _bolos[_random.nextInt(_bolos.length)];
  }
}

class FornecedorDeSaladas implements Fornecedor {
  final _random = Random();
  final _salada = <Produto>[
    Produto('salada de tomate', 50),
    Produto('salada de tomate', 50),
    Produto('salada de tomate', 50),
    Produto('salada de tomate', 50),
    Produto('salada de tomate', 50),
    Produto('salada de tomate', 50)
  ];
  @override
  Produto fornecer() {
    return _salada[_random.nextInt(_salada.length)];
  }
}

class FornecedorDePetiscos implements Fornecedor {
  final _random = Random();
  final _petiscos = <Produto>[
    Produto('peisco de coraçao', 250),
    Produto('peisco de coraçao', 250),
    Produto('peisco de coraçao', 250),
    Produto('peisco de coraçao', 250),
    Produto('peisco de coraçao', 250),
    Produto('peisco de coraçao', 250)
  ];
  @override
  Produto fornecer() {
    return _petiscos[_random.nextInt(_petiscos.length)];
  }
}

class FornecedorUltraCaloricos implements Fornecedor {
  final _random = Random();
  final _calorico = <Produto>[
    Produto('Xsalada', 300),
    Produto('Xsalada', 300),
    Produto('Xsalada', 300),
    Produto('Xsalada', 300),
    Produto('Xsalada', 300),
    Produto('Xsalada', 300)
  ];
  @override
  Produto fornecer() {
    return _calorico[_random.nextInt(_calorico.length)];
  }
}

enum StatusCalorias {
  deficitExtremo,
  deficit,
  satisfeita,
  excesso,
}

class Pessoa {
  // Acumulador de calorias
  int _caloriasConsumidas = 0;
  int _caloriaInicial = 0;

  int _numeroDeRefeicao = 0;

  /// Imprime as informacoes desse consumidor
  void informacoes() {
    if (_caloriasConsumidas + _caloriaInicial <= 2000) {
      print('Calorias consumidas: ${_caloriasConsumidas + _caloriaInicial}');
      print('status : ${getStatusCaloria()}');
      print('numero de refeiiçoes : $_numeroDeRefeicao');
    } else {
      print(
          'voce nao precisa comer suas calorias ${_caloriasConsumidas + _caloriaInicial} ja  estao acima do recomendado');
    }
  }

  StatusCalorias getStatusCaloria() {
    final caloriasCC = _caloriasConsumidas + _caloriaInicial;
    if (caloriasCC <= 500) {
      return StatusCalorias.deficitExtremo;
    } else if (caloriasCC <= 1200) {
      return StatusCalorias.deficit;
    } else if (caloriasCC <= 1800) {
      return StatusCalorias.satisfeita;
    } else {
      return StatusCalorias.excesso;
    }
  }

  /// Consome um produto e aumenta o numero de calorias
  void refeicao(Fornecedor fornecedor) {
    final produto = fornecedor.fornecer();
    print('Consumindo ${produto.nome} (${produto.calorias} calorias)');
    _caloriasConsumidas += produto.calorias;
    _numeroDeRefeicao++;
  }
}



// apos muita guerra e percistir consegui 
