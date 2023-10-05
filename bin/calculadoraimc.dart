import 'package:calculadoraimc/calculadoraimc.dart';

void main(List<String> arguments) {
  try {
    Pessoa pessoa = Pessoa("emiliano", 70.0, 1.75);

    double imc = pessoa.calcularImc();
    pessoa.imprimirImc(imc);
  } catch (e) {
    print("Erro: $e");
  }
}
