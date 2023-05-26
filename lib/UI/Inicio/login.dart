import 'package:apps/UI/Inicio/registration.dart';
import 'package:flutter/material.dart';

import '../productos/productos.dart';
import '../quienessomos/uienessomos.dart';

class login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(10, 10, 20, 20),
      child: Column(
        children: <Widget>[
          TextField(
            autofocus: true,
            decoration: InputDecoration(
              hintText: 'Ingrese su correo',
              icon: Icon(Icons.email),
            ),
          ),
          SizedBox(height: 30),
          TextField(
            autofocus: true,
            obscureText: true,
            decoration: InputDecoration(
              hintText: 'Ingrese su contraseña',
              icon: Icon(Icons.lock),
            ),
          ),
          SizedBox(height: 30),
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
          SizedBox(height: 30),
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
