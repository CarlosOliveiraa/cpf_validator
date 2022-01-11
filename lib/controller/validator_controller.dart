import 'package:cpf_validator/model/cpf_model.dart';

class ValidatorController {
  String _cpf = '';

  setCpf(String value) {
    _cpf = value;
  }

  String validate() {
    CpfModel meuCpf = CpfModel(cpf: _cpf);

    bool isValid = meuCpf.isValid();
    String _valid = '';

    if (isValid == true) {
      _valid = '$_cpf válido';
    } else {
      _valid = '$_cpf é inválido';
    }
    return _valid;
  }
}
