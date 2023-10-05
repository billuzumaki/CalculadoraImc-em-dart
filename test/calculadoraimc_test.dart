import 'package:calculadoraimc/calculadoraimc.dart';
import 'package:test/test.dart';

void main() {
  group('Pessoa', () {
    test('Calculo de IMC com valores válidos', () {
      final pessoa = Pessoa('João', 70.0, 1.75);
      final imc = pessoa.calcularImc();
      expect(imc.toStringAsFixed(2),
          equals('22.86')); // O valor do IMC esperado com esses valores
    });

    test('Calculo de IMC com altura inválida', () {
      final pessoa = Pessoa('Maria', 60.0, -1.75);
      expect(() => pessoa.calcularImc(), throwsArgumentError);
    });

    test('Calculo de IMC com peso inválido', () {
      final pessoa = Pessoa('Carlos', -80.0, 1.80);
      expect(() => pessoa.calcularImc(), throwsArgumentError);
    });
  });
}
