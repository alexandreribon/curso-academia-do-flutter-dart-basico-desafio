void main() {
  var pacientes = [
    'Rodrigo Rahman|35|desenvolvedor|SP',
    'Manoel Silva|12|estudante|MG',
    'Joaquim Rahman|18|estudante|SP',
    'Fernando Verne|35|estudante|MG',
    'Gustavo Silva|40|estudante|MG',
    'Sandra Silva|40|estudante|MG',
    'Regina Verne|35|estudante|MG',
    'João Rahman|55|Jornalista|SP',
  ];

  var totPacMaiorDeVinteAnos = 0;

  List<String> familiaRahman = [];
  List<String> familiaSilva = [];
  List<String> familiaVerne = [];

  for (var paciente in pacientes) {
    int index;
    String nome;

    var auxArray = paciente.split('|');

    if ((int.tryParse(auxArray[1]) ?? 0) > 20) {
      totPacMaiorDeVinteAnos++;
    }

    if (auxArray[0].contains('Rahman')) {
      index = auxArray[0].indexOf('Rahman');
      nome = auxArray[0].substring(0, index - 1);
      familiaRahman.add(nome);
    }

    if (auxArray[0].contains('Silva')) {
      index = auxArray[0].indexOf('Silva');
      nome = auxArray[0].substring(0, index - 1);
      familiaSilva.add(nome);
    }

    if (auxArray[0].contains('Verne')) {
      index = auxArray[0].indexOf('Verne');
      nome = auxArray[0].substring(0, index - 1);
      familiaVerne.add(nome);
    }
  }

  print('');
  print('****************** RELATÓRIO DE PACIENTES *******************');
  print('');
  print('Total de pacientes com mais de 20 anos é: $totPacMaiorDeVinteAnos');
  print('');
  print('Pacientes agrupados por família:');
  print('');
  print('Família Rahman:');
  for (var membro in familiaRahman) {
    print('  $membro');
  }
  print('');
  print('Família Silva:');
  for (var membro in familiaSilva) {
    print('  $membro');
  }
  print('');
  print('Família Verne:');
  for (var membro in familiaVerne) {
    print('  $membro');
  }
}
