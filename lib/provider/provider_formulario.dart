import 'package:flutter/material.dart';


class provider_formulario extends ChangeNotifier {
  GlobalKey<FormState> form_provedor = GlobalKey<FormState>();
  String casillero01 = '';
  String casillero02 ='';
  String casillero03 ='';
  String casillero04 ='';
  String casillero05 ='';
  String casillero06 ='';


  bool validar(){
    return form_provedor.currentState?.validate()??false;
  }
}
