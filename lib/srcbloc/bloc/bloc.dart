import 'dart:async';
import 'package:appmobile1/srcbloc/bloc/validator.dart';

class Bloc with Validator {
  final emailController = StreamController<String>();
  final passwordController = StreamController<String>();

  Stream<String> get email => emailController.stream.transform(validaEmail);
  Stream<String> get password =>
      passwordController.stream.transform(validaPassword);

  //Recibimos un parametro de tipo String y agregamos el valor que llega al String

  Function(String) get changeEmail => emailController.sink.add;
  Function(String) get changePassword => passwordController.sink.add;
  dispose() {
    emailController.close();
    passwordController.close();
  }
}

final bloc = Bloc();
