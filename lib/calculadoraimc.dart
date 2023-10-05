class Pessoa {
  String nome;
  double peso;
  double altura;

  Pessoa(this.nome, this.peso, this.altura);

  var imc = 0;
  double calcularImc() {
    if (altura <= 0 || peso <= 0) {
      throw ArgumentError("Altura e peso devem ser valores positivos.");
    }
    return peso / (altura * altura);
  }

  void imprimirImc(imc) {
    if (imc < 16) {
      print('$nome seu IMC é ${imc.toStringAsFixed(2)} Magreza grave');
    } else if (imc > 16 && imc < 17) {
      print("$nome seu IMC é ${imc.toStringAsFixed(2)} Magreza moderada");
    } else if (imc > 17 && imc < 18.5) {
      print("$nome seu IMC é ${imc.toStringAsFixed(2)} Magreza leve");
    } else if (imc > 18.5 && imc < 25) {
      print("$nome seu IMC é ${imc.toStringAsFixed(2)} saudavel");
    } else if (imc > 25 && imc < 30) {
      print("$nome seu IMC é ${imc.toStringAsFixed(2)} Sobrepeso");
    } else if (imc > 30 && imc < 35) {
      print("$nome seu IMC é ${imc.toStringAsFixed(2)} Obesidade Grau 1");
    } else if (imc > 35 && imc < 40) {
      print(
          "$nome seu IMC é ${imc.toStringAsFixed(2)} Obesidade Grau 2 (severa)");
    } else if (imc > 40) {
      print(
          "$nome seu IMC é ${imc.toStringAsFixed(2)} Obesidade Grau 3 (mórbida)");
    } else {
      print("não foi passado valores para esta pessoa");
    }
  }
}
