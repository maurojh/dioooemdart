import 'package:dart_application_1/classes/Pessoa.dart';
import 'package:dart_application_1/classes/enum/tipo_notificacao.dart';

class PessoaJuridica extends Pessoa {
  String _cnpj = '';

  String getCnpj() => _cnpj;

  setCnpj(String value) {
    _cnpj = value;
  }

  PessoaJuridica(String nome, String endereco, String cnpj,
      {TipoNotificacao tipoNotificacao = TipoNotificacao.nenhum})
      : super(nome, endereco, tipoNotificacao: tipoNotificacao) {
    _cnpj = cnpj;
  }

  @override
  String toString() {
    return {
      'nome': getNome(),
      'endereco': getEndereco(),
      'cnpj': _cnpj,
      'tipoNotificacao': getTipoNotificacao(),
    }.toString();
  }
}
