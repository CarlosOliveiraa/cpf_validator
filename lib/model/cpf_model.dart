abstract class PersonCpf {
  bool validateCpf(String cpf);
}

class CpfModel implements PersonCpf{
  bool _resto(int digito, String cpf) {
    int soma = 0;
    for(var x = 0; x <= (digito - 2); x++){
      for(var i = digito; i >= 2; i-- ){
        soma += (int.parse(cpf[x]) * i);
      }
    }
    int resto = ((soma * 10) % 11);

    if(resto == 10) resto = 0;

    return (resto == int.parse(cpf[digito - 1]));
  }

  @override
  bool validateCpf(String cpf) {
    // TODO: implement validateCpf
    throw UnimplementedError();
  }
}
