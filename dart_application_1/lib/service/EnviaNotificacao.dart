import 'package:dart_application_1/classes/enum/tipo_notificacao.dart';
import 'package:dart_application_1/classes/pessoa.dart';
import 'package:dart_application_1/service/NotificacaoInterface.dart';
import 'package:dart_application_1/service/impl/NotificacaoEmail.dart';
import 'package:dart_application_1/service/impl/NotificacaoPushNotification.dart';
import 'package:dart_application_1/service/impl/NotificacaoSMS.dart';

class EnviaNotificacao {
  NotificacaoInterface? notificacao;

  void notificar(Pessoa pessoa) {
    switch (pessoa.getTipoNotificacao()) {
      case TipoNotificacao.email:
        notificacao = NotificacaoEmail();
        break;
      case TipoNotificacao.sms:
        notificacao = NotificacaoSMS();
        break;
      case TipoNotificacao.pushNotification:
        notificacao = NotificacaoPushNotification();
        break;
      default:
        break;
    }
    if(notificacao != null) {
        notificacao!.enviarNotificacao(pessoa);
    } else {
        print('Pessoa sem tipo de notificação');
    }
  }
}