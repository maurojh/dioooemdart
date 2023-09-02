class Pessoa {
  // propriedades
  String _nome = '';
  String _endereco = '';

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

  @override
  String toString() {
    return {
      'nome': _nome,
      'endereco': _endereco,
    }.toString();
  }
}
