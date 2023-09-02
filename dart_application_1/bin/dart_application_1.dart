
import 'package:dart_application_1/classes/Fisica.dart';
import 'package:dart_application_1/classes/Juridica.dart';

void main(List<String> arguments) {
  var p3 = PessoaFisica('Beltrano', 'Rua 3', '98712342341');
  print(p3);

  var p2 = PessoaJuridica('Empresa 1', 'Rua 2', '234234234234');
  print(p2);
}
