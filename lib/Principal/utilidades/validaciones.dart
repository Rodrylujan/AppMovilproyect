import 'dart:async';

class validaciones{
  static String? validarEmail(value) {
    String pattern =r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = RegExp(pattern);
    //if(regex.hasMatch(value)) {
      //return 'Escribe nuevamente un correo valido';
    //}
    return regex.hasMatch(value)? null :'escribe nuevamente un correo valido';
  }
  static String? validarCorreo(value){
    String  patron = r'(\w[-._\w]*\w@\w[-._\w]*\w\.\w{2,3})';
    RegExp reg = RegExp(patron);
    return reg.hasMatch(value ?? '')? null :'escribe nuevamente un correo valido';
  }
  static String? validarfecha(value){
    String  patron = r'(((0[1-9]|[12][0-9]|3[01])([/])(0[13578]|10|12)([/])(\d{4}))|(([0][1-9]|[12][0-9]|30)([/])(0[469]|11)([/])(\d{4}))|((0[1-9]|1[0-9]|2[0-8])([/])(02)([/])(\d{4}))|((29)(\.|-|\/)(02)([/])([02468][048]00))|((29)([/])(02)([/])([13579][26]00))|((29)([/])(02)([/])([0-9][0-9][0][48]))|((29)([/])(02)([/])([0-9][0-9][2468][048]))|((29)([/])(02)([/])([0-9][0-9][13579][26])))';
    RegExp reg = RegExp(patron);
    return reg.hasMatch(value ?? '')?null:'escribe una fecha valida';
  }
  static String? validarPassword(value){
    String  patron = r'^(?=[^\d_].*?\d)\w(\w|[!@#$%]){7,20}';
    RegExp reg = RegExp(patron);
    return reg.hasMatch(value ?? '')?null:'escribe una contraseña valida';
  }
  static String? validarNombreApellido(value){
    String  patron = r'^[A-Za-záéíóúÁÉÍÓÚüÜñÑ]{2,}(\s[A-Za-záéíóúÁÉÍÓÚüÜñÑ]{2,}){0,2}$';
    RegExp reg = RegExp(patron);
    return reg.hasMatch(value ?? '')?null:'escribe un valor valido';
  }
  static String? validarTelefono(value){
    String  patron = r'^9\d{8}$';
    RegExp reg = RegExp(patron);
    return reg.hasMatch(value ?? '')?null:'9 digitos';
  }
  static String? validarFloat(value){
    String  patron = r'^[-+]?[0-9]*\.?[0-9]+([eE][-+]?[0-9]+)?$';
    RegExp reg = RegExp(patron);
    return reg.hasMatch(value ?? '')?null:'valor no valido';
  }
}