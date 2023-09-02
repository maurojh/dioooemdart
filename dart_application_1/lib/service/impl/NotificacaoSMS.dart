import 'package:dart_application_1/classes/pessoa.dart';
import 'package:dart_application_1/service/NotificacaoInterface.dart';

class NotificacaoSMS implements NotificacaoInterface {
  @override
  void enviarNotificacao(Pessoa pessoa) {
    print('Enviando SMS para: ${pessoa.getNome()}');
  }
}