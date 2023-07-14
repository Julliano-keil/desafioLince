void main() {
  List<int> numeros = [3, 17, 23, 49, 328, 1358, 21, 429, 12, 103, 20021];
  convertenumeros(numeros);
}

void convertenumeros(List<int> numeros) {
  for (final numero in numeros..sort()) {
    print('decimal :  $numero ,'
        'binario : ${numero.toRadixString(2)} ,'
        'octal = ${numero.toRadixString(8)} ,'
        'hexadecimal = ${numero.toStringAsFixed(2)}');
  }
}
