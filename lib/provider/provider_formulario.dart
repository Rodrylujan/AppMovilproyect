import 'package:flutter/material.dart';


class provider_formulario extends ChangeNotifier {
  GlobalKey<FormState> form_provedor = GlobalKey<FormState>();
  String casillero01 = '';
  String casillero02 ='';


  bool validar(){
    return form_provedor.currentState?.validate()??false;

  }
}
