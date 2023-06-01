import 'package:apps/UI/Inicio/encabezadogereral.dart';
import 'package:apps/UI/datosapp/perfilUsuario.dart';
import 'package:apps/UI/datosapp/registroRCP.dart';
import 'package:flutter/material.dart';

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
              title: Text('Ver Registro RC'),
              onTap: () {
                // Acciones al seleccionar 'Ver Registro RC'
              },
            ),
            ListTile(
              leading: Icon(Icons.school),
              title: Text('Tutorial'),
              onTap: () {
                // Acciones al seleccionar 'Tutorial'
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
