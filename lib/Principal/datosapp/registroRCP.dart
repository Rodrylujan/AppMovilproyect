import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../provider/provider_login.dart';
import '../quienessomos/uienessomos.dart';
import '../utilidades/validaciones.dart';

class registroRCP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final f01 = Provider.of<LoginUsuarioProvider>(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Regresar a la pantalla anterior
          },
        ),
        title: Text('Registro RCP'),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(50, 50, 30, 30),
        child: Form(
          key: f01.form_provedor,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            children: <Widget>[
              SizedBox(height: 30),
              TextFormField(
                autofocus: true,
                decoration: InputDecoration(
                  hintText: 'SpO2',
                  icon: Icon(Icons.monitor),
                ),
                validator: (value) {
                  return validaciones.validarFloat(value);
                },
                onChanged: (value) {
                  f01.casillero01 = value;
                },
              ),
              SizedBox(height: 30),
              TextFormField(
                autofocus: true,
                decoration: InputDecoration(
                  hintText: 'PRBPM',
                  icon: Icon(Icons.favorite),
                ),
                validator: (value) {
                  return validaciones.validarFloat(value);
                },
                onChanged: (value) {
                  f01.casillero02 = value;
                },
              ),

              SizedBox(height: 30),
              TextFormField(
                autofocus: true,
                decoration: InputDecoration(
                  hintText: 'Presión Sistólica',
                  icon: Icon(Icons.arrow_upward),
                ),
                validator: (value) {
                  return validaciones.validarFloat(value);
                },
                onChanged: (value) {
                  // Asigna el valor a la variable correspondiente del proveedor
                  f01.casillero02 = value;
                },
              ),

              SizedBox(height: 30),
              TextFormField(
                autofocus: true,
                decoration: InputDecoration(
                  hintText: 'Presión Diastólica',
                  icon: Icon(Icons.arrow_downward),
                ),
                validator: (value) {
                  return validaciones.validarFloat(value);
                },
                onChanged: (value) {
                  // Asigna el valor a la variable correspondiente del proveedor
                  f01.casillero02 = value;
                },
              ),
              SizedBox(height: 50),
              Container(
                width: 200,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink,
                    fixedSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () {
                    if (f01.validar()) {
                      // Realiza el registro de RCP utilizando los datos del proveedor
                      // Puedes acceder a los campos utilizando las variables del proveedor
                      // Ejemplo: f01.casillero01, f01.casillero02, etc.
                    }
                  },
                  child: Text("Registrar"),
                ),
              ),
              SizedBox(height: 50),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => quienessomos()),
                  );
                },
                child: Text(
                  "¿Quieres saber de nosotros?",
                  style: TextStyle(
                    color: Colors.deepOrange,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
