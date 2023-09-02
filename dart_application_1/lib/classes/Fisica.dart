import 'package:dart_application_1/classes/pessoa.dart';

class PessoaFisica extends Pessoa {
  String _cpf = '';

  void setCpf(String cpf) {
    _cpf = cpf;
  }

  String getCpf() {
    return _cpf;
  }

  PessoaFisica(String nome, String endereco, String cpf)
      : super(nome, endereco) {
        _cpf = cpf;
      }

  @override
  String toString() {
    return {
      'nome': getNome(),
      'endereco': getEndereco(),
      'cpf': _cpf,
    }.toString();
  }
}
