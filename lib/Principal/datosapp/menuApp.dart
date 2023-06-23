
import 'package:apps/Principal/datosapp/perfilUsuario.dart';
import 'package:apps/Principal/datosapp/registroRCP.dart';
import 'package:apps/Principal/datosapp/tutorialApp.dart';
import 'package:flutter/material.dart';

import '../main/encabezadogereral.dart';

class menuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        key: UniqueKey(),
        title: 'Menu',
        onBackButtonPressed: () {
          Navigator.pop(context);
        },
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 30, 10, 10),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Perfil'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => perfilUsuario()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.assignment),
              title: Text('Registro RC'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => registroRCP()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.list),
              title: Text('Seguimiento'),
              onTap: () {
                // Acciones al seleccionar 'Ver Registro RC'
              },
            ),
            ListTile(
              leading: Icon(Icons.assignment),
              title: Text('Regordatorio'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => registroRCP()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.school),
              title: Text('Tutorial'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => tutorialApp()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Cerrar Sesión'),
              onTap: () {
                // Acciones al seleccionar 'Cerrar Sesión'
              },
            ),
          ],
        ),
      ),
    );
  }
}
