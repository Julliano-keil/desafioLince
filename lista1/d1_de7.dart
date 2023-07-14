void main() {
  List<int> numeros = [10, 35, 999, 126, 95, 7, 348, 462, 43, 109];

  final funcaofor = funcaoFor(numeros);
  final funcaowhile = somaWhile(numeros);
  final lista = somalista(numeros);
  final recursivo = somarecurciva(numeros);

  print('for : $funcaofor');
  print('while ; $funcaowhile');
  print('lista : $lista');
  print('recursivo : $recursivo');
}

int funcaoFor(List<int> numeros) {
  var soma = 0;

  for (var numero in numeros) {
    soma += numero;
  }
  return soma;
}

int somaWhile(List<int> numeros) {
  var soma = 0;
  final iterador = numeros.iterator;
  while (iterador.moveNext()) {
    soma += iterador.current;
  }

  return soma;
}

int somalista(List<int> numeros) => numeros.reduce((a, b) =>
    a + b); // reduce que armazena os valores da list aem um unici valor

int somarecurciva(List<int> numeros) {
  if (numeros.isEmpty) {
    return 0;
  }

  return numeros.first + somarecurciva(numeros.sublist(1));
}
