import 'package:dart_application_1/classes/enum/tipo_notificacao.dart';

abstract class Pessoa {
  // propriedades
  String _nome = '';
  String _endereco = '';
  String _email = '';
  String _celular = '';
  String _token = '';

  TipoNotificacao _tipoNotificacao = TipoNotificacao.nenhum;

  void setNome(String nome) {
    // não precisa mais de this
    _nome = nome;
  }

  String getNome() {
    return _nome;
  }

  void setEndereco(String endereco) {
    _endereco = endereco;
  }

  String getEndereco() {
    return _endereco;
  }

  void setTipoNotificacao(TipoNotificacao tipoNotificacao) {
    _tipoNotificacao = tipoNotificacao;
  }

  TipoNotificacao getTipoNotificacao() {
    return _tipoNotificacao;
  }

  void setEmail(String email) {
    _email = email;
  }

  String getEmail() {
    return _email;
  }

  void setCelular(String celular) {
    _celular = celular;
  }

  String getCelular() {
    return _celular;
  }

  void setToken(String token) {
    _token = token;
  }

  String getToken() {
    return _token;
  }

  Pessoa(String nome, String endereco, {TipoNotificacao tipoNotificacao = TipoNotificacao.nenhum}) {
    _nome = nome;
    _endereco = endereco;
    _tipoNotificacao = tipoNotificacao;
  }

  @override
  String toString() {
    return {
      'nome': _nome,
      'endereco': _endereco,
      'tipoNotificacao': _tipoNotificacao,
    }.toString();
  }
}
