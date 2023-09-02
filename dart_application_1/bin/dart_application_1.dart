
import 'package:dart_application_1/classes/Fisica.dart';
import 'package:dart_application_1/classes/Juridica.dart';
import 'package:dart_application_1/classes/enum/tipo_notificacao.dart';
import 'package:dart_application_1/classes/pessoa.dart';
import 'package:dart_application_1/service/EnviaNotificacao.dart';

void main(List<String> arguments) {
  var p3 = PessoaFisica('Beltrano', 'Rua 3', '98712342341', tipoNotificacao: TipoNotificacao.pushNotification);
  print(p3);

  var p2 = PessoaJuridica('Empresa 1', 'Rua 2', '234234234234', tipoNotificacao: TipoNotificacao.email);
  print(p2);

  EnviaNotificacao enviaNotificacao = EnviaNotificacao();
  enviaNotificacao.notificar(p2 as Pessoa);
  enviaNotificacao.notificar(p3);
}
