import 'package:flutter/material.dart';

class RegistroUsuarioProvider extends ChangeNotifier {
  GlobalKey<FormState> formProvedor = GlobalKey<FormState>();
  String id = '';
  String email = '';
  String password = '';
  String nombres = '';
  String apellidos = '';
  String fechaNacimiento = '';
  double peso = 0.0;
  double altura = 0.0;
  bool genero = true;
  String telefono = '';

  bool validar() {
    return formProvedor.currentState?.validate() ?? false;
  }
}
