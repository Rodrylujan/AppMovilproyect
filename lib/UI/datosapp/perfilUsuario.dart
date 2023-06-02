import 'package:flutter/material.dart';
import '../utilidades/validaciones.dart';
class perfilUsuario extends StatefulWidget {
  @override
  _perfilUsuarioState createState() => _perfilUsuarioState();
}

class _perfilUsuarioState extends State<perfilUsuario> {
  String nombre = "Lionel Andres";
  String apellido = "Messi Cuchitinni";
  String correo = "andrescuchitinni10@gmail.com";
  String fechaNacimiento = "10/05/1990";
  int edad = 33;
  List<String> numerosEmergencia = ["958745874", "987654321"];
  TextEditingController numeroEmergenciaController = TextEditingController();

  void agregarNumeroEmergencia() {
    setState(() {
      String nuevoNumero = numeroEmergenciaController.text;
      numerosEmergencia.add(nuevoNumero);
      numeroEmergenciaController.clear();
    });
  }

  void eliminarNumeroEmergencia(int index) {
    setState(() {
      numerosEmergencia.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil'),
      ),
      body: Form(
        //key: f01.form_provedor,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
          children: [
            SizedBox(height: 20),
            Image.asset(
              '../../../assets/images/unser.png',
              width: 150,
              height: 150,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(50, 50, 30, 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nombres: $nombre',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Divider(),
                  SizedBox(height: 20),
                  Text(
                    'Apellidos: $apellido',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Divider(),
                  SizedBox(height: 20),
                  Text(
                    'Correo: $correo',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
                  ),
                  Divider(),
                  SizedBox(height: 20),
                  Text(
                    'Fecha de Nacimiento: $fechaNacimiento',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
                  ),
                  Divider(),
                  SizedBox(height: 20),
                  Text(
                    'Edad: $edad años',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
                  ),
                  Divider(),
                  SizedBox(height: 20),
                  Text(
                    'Teléfonos de emergencia:',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
                  ),
                  SizedBox(height: 5),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(numerosEmergencia.length, (index) {
                      return Row(
                        children: [
                          Expanded(
                            child: Text(
                              '- ${numerosEmergencia[index]}',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                          IconButton(
                            icon: Icon(Icons.delete),
                            onPressed: () {
                              eliminarNumeroEmergencia(index);
                            },
                          ),
                        ],
                      );
                    }),
                  ),
                  Divider(),
                  SizedBox(height: 10),
                  TextFormField(
                    controller: numeroEmergenciaController,
                    autofocus: true,
                    decoration: InputDecoration(
                      hintText: 'Agregra telefono de emergencia ',
                    ),
                    validator: (value){
                      return validaciones.Validar_telefono(value);
                    },
                    //onChanged: (value) =>f01.casillero02,
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: agregarNumeroEmergencia,
                    child: Text('Agregar nuevo numero'),
                  ),
                ],
              ),
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
