import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../Model/Usuario.dart';
import '../../provider/provider_register.dart';
import '../../services/firebase_service.dart';

class RegistroButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final f01 = context.watch<RegistroUsuarioProvider>();

    return Container(
      width: 200,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.pink,
          fixedSize: const Size(double.infinity, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        onPressed: () async {
          if (f01.validar()) {
            User usuario = User(
              id: "ID",
              email: f01.email,
              password: f01.password,
              nombres: f01.nombres,
              apellidos: f01.apellidos,
              fechaNacimiento: f01.fechaNacimiento,
              peso: f01.peso,
              altura: f01.altura,
              genero: f01.genero,
              telefono: f01.telefono,
            );
            bool registrado = await setUser(usuario);
            if (registrado) {
              Navigator.pop(context);
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Ocurrió un error al registrar el usuario'),
                  backgroundColor: Colors.red,
                ),
              );
            }
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Completa los campos'),
                backgroundColor: Colors.red,
              ),
            );
          }
        },
        child: Text("Registrar usuario"),
      ),
    );
  }
}
