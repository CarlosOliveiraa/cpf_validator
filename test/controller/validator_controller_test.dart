import 'package:cpf_validator/controller/validator_controller.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final controller = ValidatorController();
  controller.setCpf('11111111111');

  test('deve retornar verdadeiro', () {
    expect(controller.validate().isNotEmpty, true);
  });
}
