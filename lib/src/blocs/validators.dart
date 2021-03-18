import 'dart:async';



class Validators {

  //VALIDAR EMAIL CON SINK
  final validarEmail = StreamTransformer<String, String>.fromHandlers(
    handleData: ( email, sink ) {

      Pattern pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
      RegExp regExp = new RegExp(pattern);

      if(regExp.hasMatch(email)){
        sink.add(email);
      }else{
        sink.addError('El email no es correcto!');
      }

    }
  );

  


  //VALIDAR PASSWORD CON SINK
  final validarPassword = StreamTransformer<String, String>.fromHandlers(
    handleData: ( password, sink ) {

      if(password.length >= 6){
        sink.add( password );
      }else{
        sink.addError('La contraseña debe tener más de 6 caracteres');
      }

    }
  );


}
