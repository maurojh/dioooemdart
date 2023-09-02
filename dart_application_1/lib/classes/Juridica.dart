import 'package:dart_application_1/classes/Pessoa.dart';

class PessoaJuridica extends Pessoa {
  String _cnpj = '';

  String getCnpj() => _cnpj;

  setCnpj(String value) {
    _cnpj = value;
  }

  PessoaJuridica(String nome, String endereco, String cnpj)
      : super(nome, endereco) {
    _cnpj = cnpj;
  }

  @override
  String toString() {
    return {
      'nome': getNome(),
      'endereco': getEndereco(),
      'cnpj': _cnpj,
    }.toString();
  }
}
