import 'package:dart_application_1/classes/pessoa.dart';
import 'package:dart_application_1/service/NotificacaoInterface.dart';

class NotificacaoEmail implements NotificacaoInterface {
  @override
  void enviarNotificacao(Pessoa pessoa) {
    print('Enviando E-mail para: ${pessoa.getNome()}');
  }
  
}