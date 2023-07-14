void main() {
  final dataAtual = DateTime.now();

  var diasUteisRestantes = 18;
  var dataCalculada = dataAtual;

  while (diasUteisRestantes > 0) {
    dataCalculada = dataCalculada.add(Duration(days: 1));

    if (dataCalculada.weekday == DateTime.friday ||
        dataCalculada.weekday == DateTime.saturday) {
      continue;
    }

    diasUteisRestantes--;
  }

  String dataAtualFormatada =
      '${dataAtual.day.toString().padLeft(2, '0')}/${dataAtual.month.toString().padLeft(2, '0')}/${dataAtual.year}';
  String dataCalculadaFormatada =
      '${dataCalculada.day.toString().padLeft(2, '0')}/${dataCalculada.month.toString().padLeft(2, '0')}/${dataCalculada.year}';

  print('Data atual: $dataAtualFormatada');
  print('Data calculada: $dataCalculadaFormatada');
}
