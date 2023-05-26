import 'package:flutter/material.dart';

import '../productos/productos.dart';
import '../quienessomos/uienessomos.dart';
import 'encabezado.dart';

class RegistroUsuario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: EdgeInsets.fromLTRB(10, 10, 20, 20),
        child: Column(
          children: <Widget>[
            encabezado(),
            TextField(
              autofocus: true,
              decoration: InputDecoration(
                hintText: 'Ingrese sus nombre',
                icon: Icon(Icons.person),
              ),
            ),
            SizedBox(height: 30),
            TextField(
              autofocus: true,
              decoration: InputDecoration(
                hintText: 'Ingrese su apellidos',
                icon: Icon(Icons.person),
              ),
            ),
            SizedBox(height: 30),




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
            TextField(
              autofocus: true,
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Confirme su contraseña',
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
                child: Text("Registrar usuario"),
              ),
            ),
            SizedBox(height: 30),
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
    );
  }
}