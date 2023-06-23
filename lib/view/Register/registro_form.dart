import 'package:apps/Principal/quienessomos/uienessomos.dart';
import 'package:apps/view/Register/registro_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../Principal/utilidades/validaciones.dart';
import '../../config/Widgets/CustomTexFordField.dart';
import '../../provider/provider_register.dart';
class RegistroForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final f01 = context.watch<RegistroUsuarioProvider>();

    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(50, 50, 30, 30),
      child: Form(
        key: f01.formProvedor,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
          children: <Widget>[
            SizedBox(height: 30),
            CustomTextFormField(
              autoFocus: true,
              hintText: 'Nombres',
              icon: Icons.person,
              validator: (value) {
                return validaciones.validarNombreApellido(value);
              },
              onChanged: (value) {
                f01.nombres = value;
              },
            ),
            SizedBox(height: 30),
            CustomTextFormField(
              autoFocus: true,
              hintText: 'Apellidos',
              icon: Icons.person,
              validator: (value) {
                return validaciones.validarNombreApellido(value);
              },
              onChanged: (value) {
                f01.apellidos = value;
              },
            ),
            SizedBox(height: 30),
            CustomTextFormField(
              autoFocus: true,
              hintText: 'Fecha de nacimiento',
              icon: Icons.calendar_month,
              validator: (value) {
                return validaciones.validarfecha(value);
              },
              onChanged: (value) {
                f01.fechaNacimiento = value;
              },
            ),
            SizedBox(height: 30),
            CustomTextFormField(
              autoFocus: true,
              hintText: 'Correo electronico',
              icon: Icons.email,
              validator: (value) {
                return validaciones.validarCorreo(value);
              },
              onChanged: (value) {
                f01.email = value;
              },
            ),
            SizedBox(height: 30),
            CustomTextFormField(
              autoFocus: true,
              paswword: true,
              hintText: 'Ingrese su contraseña',
              icon: Icons.lock,
              validator: (value) {
                return validaciones.validarPassword(value);
              },
              onChanged: (value) {
                f01.password = value;
              },
            ),
            SizedBox(height: 30),
            CustomTextFormField(
              autoFocus: true,
              hintText: 'Peso(kg)',
              icon: Icons.monitor_weight,
              validator: (value) {
                return validaciones.validarFloat(value);
              },
              onChanged: (value) {
                f01.peso = double.parse(value);
              },
            ),
            SizedBox(height: 30),
            CustomTextFormField(
              autoFocus: true,
              hintText: 'Altura(m)',
              icon: Icons.height,
              validator: (value) {
                return validaciones.validarFloat(value);
              },
              onChanged: (value) {
                f01.altura = double.parse(value);
              },
            ),
            SizedBox(height: 30),
            CustomTextFormField(
              autoFocus: true,
              hintText: 'Genero(1: hombre. 2: mujer)',
              icon: Icons.family_restroom,
              validator: (value) {
                return validaciones.validarFloat(value);
              },
              onChanged: (value) {
                f01.genero = value as bool;
              },
            ),
            SizedBox(height: 30),
            CustomTextFormField(
              autoFocus: true,
              hintText: 'Celular',
              icon: Icons.phone,
              validator: (value) {
                return validaciones.validarTelefono(value);
              },
              onChanged: (value) {
                f01.telefono = value;
              },
            ),
            SizedBox(height: 70),
            RegistroButton(),
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
    );
  }
}
