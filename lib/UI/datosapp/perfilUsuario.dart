import 'package:flutter/material.dart';

class perfilUsuario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Datos de ejemplo del usuario
    String nombre = "John";
    String apellido = "Doe";
    String correo = "johndoe@example.com";
    String fechaNacimiento = "01/01/1990";
    int edad = 33;
    List<String> numerosEmergencia = ["123456789", "987654321"];

    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil'),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(50, 50, 30, 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nombre: $nombre $apellido',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text('Correo: $correo'),
            SizedBox(height: 10),
            Text('Fecha de Nacimiento: $fechaNacimiento'),
            SizedBox(height: 10),
            Text('Edad: $edad años'),
            SizedBox(height: 10),
            Text(
              'Números de Emergencia:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: numerosEmergencia
                  .map((numero) => Text('- $numero'))
                  .toList(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: ElevatedButton(
            onPressed: () {
              // Acciones al presionar el botón de editar perfil
            },
            child: Text('Editar Perfil'),
          ),
        ),
      ),
    );
  }
}
