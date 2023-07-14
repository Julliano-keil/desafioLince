import 'dart:math';

void main() {
  List<double> raios = [5, 8, 12, 7.3, 18, 2, 25];

  for (double lista in raios) {
    double area = calculaArea(lista);

    double perimetro = calculaPerimetro(lista);
    print('Raio: $lista');
    print('Perímetro: ${perimetro.toStringAsFixed(2)}');
    print('Área: ${area.toStringAsFixed(2)}');
    print('');
  }
}

double calculaPerimetro(double raio) {
  return 2 * pi * raio;
}

double calculaArea(double raio) {
  return pi * pow(raio, 2);
}
