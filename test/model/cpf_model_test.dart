import 'package:cpf_validator/model/cpf_model.dart';
import 'package:flutter_test/flutter_test.dart';


final meuCpf = CpfModel(cpf: '10640397662');
final cpfInvalido = CpfModel(cpf: '00114223654');


void main() {
  test('deve retornar verdadeiro', () {
    expect(meuCpf.isValid(), true);
  });
  test('deve retornar verdadeiro se o decimo digito for verdadeiro', () {
    expect(meuCpf.validate(9), true);
  });
  test('deve retornar verdadeiro se o decimo primeiro digito for verdadeiro', () {
    expect(meuCpf.validate(10), true);
  });


  test('deve retornar falso', () {
    expect(cpfInvalido.isValid(), false);
  });
  test('deve retornar verdadeiro se o decimo digito for falso', () {
    expect(cpfInvalido.validate(9), false);
  });
  test('deve retornar verdadeiro se o decimo primeiro digito for falso', () {
    expect(cpfInvalido.validate(10), false);
  });
}
