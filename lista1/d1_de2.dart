void main() {
  List<double> celcius = [0.0, 4.2, 15.0, 18.1, 21.7, 32.0, 40.0, 41.0];

  for (double celsius1 in celcius) {
    double fahrenheit = (celsius1 * 9 / 5) + 32;
    double kelvin = celsius1 + 273.15;
    print(
        '$celsius1 graus Celsius = ${fahrenheit.toStringAsFixed(2)} graus Fahrenheit');
    print('$celsius1 graus Celsius = ${kelvin.toStringAsFixed(2)} Kelvin');
    print('/-----------------------------------------------------------------');
  }
}
