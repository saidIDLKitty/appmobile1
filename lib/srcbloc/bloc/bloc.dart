import 'dart:async';

class Bloc {
  final emailController = StreamController<String>();
  final passwordController = StreamController<String>();

  //Recibimos un parametro de tipo String y agregamos el valor que llega al String 

  Function(String) get changeEmail => emailController.sink.add;
  Function(String) get changePassword => passwordController.sink.add;
}