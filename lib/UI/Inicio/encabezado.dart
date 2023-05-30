import 'package:apps/UI/Inicio/presentacion.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class encabezado extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: ElevatedButton(
              onPressed: () {
                // Acción a realizar al hacer clic en el botón
                // ...
              },
              child: Text('salir'),
            ),

          ),
          SizedBox(height: 40),
          Text("Login",
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}