import 'package:apps/UI/Inicio/registration.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/provider_formulario.dart';
import '../utilidades/validaciones.dart';
import '../productos/productos.dart';

class cuerpo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final f01 = Provider.of<provider_formulario>(context);
    return Padding(
      padding: EdgeInsets.fromLTRB(10, 10, 20, 20),
      child: Column(
        children: <Widget>[
          TextFormField(
            autofocus: true,
            decoration: InputDecoration(
              hintText: 'Ingrese su correo',
              icon: Icon(Icons.email),
            ),
            validator: (value){
              return validaciones.validar_Corrreo(value);
            },
            //onChanged: (value) =>f01.casillero01,
          ),
          SizedBox(height: 50),
          TextField(
            autofocus: true,
            obscureText: true,
            decoration: InputDecoration(
              hintText: 'Ingrese su contraseña',
              icon: Icon(Icons.lock),
            ),
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
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => productos()),
                );
              },
              child: Text("Iniciar sesión"),
            ),
          ),
          SizedBox(height: 50),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RegistroUsuario()),
              );
            },
            child: Text(
              "No tengo una cuenta",
              style: TextStyle(
                color: Colors.deepOrange,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
