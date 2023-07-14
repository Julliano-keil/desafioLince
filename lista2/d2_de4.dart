import 'dart:math' as math;

void main() {
  // Definindo o comparador de formas
  final List<FormaGeometrica> formas = [
    Circulo('Círculo A', 13),
    Circulo('Círculo B', 17),
    Retangulo('Retângulo A', 5, 3),
    Retangulo('Retângulo B', 4, 5),
    TrianguloEquilatero('Triângulo Equilátero A', 3),
    TrianguloEquilatero('Triângulo Equilátero B', 7),
    TrianguloRetangulo('Triângulo Retângulo A', 8, 4),
    TrianguloRetangulo('Triângulo Retângulo B', 9, 22),
    PentagonoRegular('Pentágono Regular A', 6),
    PentagonoRegular('Pentágono Regular B', 6),
    HexagonoRegular('Hexágono Regular A', 4),
    HexagonoRegular('Hexágono Regular B', 7),
  ];

  final maiorArea = calcular(formas, (forma) => forma.calcularFormas());
  final maiorPerimetro = calcular(formas, (forma) => forma.calcularFormas());

  print(
      'A maior área é ${maiorArea.calcularFormas().toStringAsFixed(2)} e pertence a ${maiorArea.nome}');
  print(
      'O maior perímetro é ${maiorPerimetro.calcularFormas().toStringAsFixed(2)} e pertence a ${maiorPerimetro.nome}');
}

/// Representa a forma geometrica "circulo"
class Circulo extends FormaGeometrica {
  /// Construtor padrao, recebe o [raio] do circulo.
  Circulo(this.nome, this.raio) : super(nome);

  final String nome;
  final double raio;

  @override
  double calcularFormas() {
    return raio;
  }
}

/// Representa a forma geometrica "retangulo", forma geometrica de quatro lados
/// e angulos retos (90 graus).
class Retangulo extends FormaGeometrica {
  /// Construtor padrao, recebe a [altura] e [largura] do retangulo
  Retangulo(this.nome, this.altura, this.largura) : super(nome);

  final String nome;
  final double largura;
  final double altura;

  @override
  double calcularFormas() {
    return altura * largura;
  }
}

//classe abstract que vai passar as informaçoes para as demais class
abstract class FormaGeometrica {
  final String nome;
  FormaGeometrica(this.nome);
  double calcularFormas();
}

class TrianguloEquilatero extends FormaGeometrica {
  TrianguloEquilatero(String nome, this.lado) : super(nome);

  final double lado;

  @override
  double calcularFormas() {
    return math.sqrt(3) / 4 * math.pow(lado, 2);
  }
}

class TrianguloRetangulo extends FormaGeometrica {
  TrianguloRetangulo(String nome, this.base, this.altura) : super(nome);

  final double base;
  final double altura;

  @override
  double calcularFormas() {
    return base + altura + math.sqrt(math.pow(base, 2) + math.pow(altura, 2));
  }
}

class PentagonoRegular extends FormaGeometrica {
  PentagonoRegular(String nome, this.lado) : super(nome);

  final double lado;

  @override
  double calcularFormas() {
    return (5 * lado * lado) / (4 * math.tan(math.pi / 5));
  }
}

class HexagonoRegular extends FormaGeometrica {
  HexagonoRegular(String nome, this.lado) : super(nome);

  final double lado;

  @override
  double calcularFormas() {
    return (3 * math.sqrt(3) * math.pow(lado, 2)) / 2;
  }
}

/// Compara caracteristicas de formas geometricas
FormaGeometrica calcular(
    List<FormaGeometrica> formas, double Function(FormaGeometrica) medida) {
  return formas.reduce(
      (atual, valorP) => medida(valorP) > medida(atual) ? valorP : atual);
}
