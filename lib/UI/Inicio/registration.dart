import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../provider/provider_formulario.dart';
import '../productos/productos.dart';
import '../quienessomos/uienessomos.dart';
import '../utilidades/validaciones.dart';
import 'encabezado.dart';

class RegistroUsuario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //final f01 = Provider.of<provider_formulario>(context);
    return Provider(
      create: (BuildContext context) {  },
      child: Material(
        child: Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 20, 20),
          child: Form(
            //key: f01.form_provedor,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              children: <Widget>[
                encabezado(),
                TextFormField(
                  autofocus: true,
                  decoration: InputDecoration(
                    hintText: 'Ingrese sus nombre',
                    icon: Icon(Icons.person),
                  ),
                ),
                SizedBox(height: 30),
                TextFormField(
                  autofocus: true,
                  decoration: InputDecoration(
                    hintText: 'Ingrese su apellidos',
                    icon: Icon(Icons.person),
                  ),
                ),

                SizedBox(height: 30),
                TextFormField(
                  autofocus: true,
                  decoration: InputDecoration(
                    hintText: 'Fecha de nacimiento',
                    icon: Icon(Icons.calendar_month),
                  ),
                  validator: (value){
                    return validaciones.Validar_fecha(value);
                  },
                  //onChanged: (value) =>f01.casillero02,
                ),

                SizedBox(height: 30),
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
                SizedBox(height: 30),
                TextFormField(
                  autofocus: true,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Ingrese su contraseña',
                    icon: Icon(Icons.lock),
                  ),
                ),
                SizedBox(height: 30),
                TextFormField(
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
        ),
      ),
    );
  }
}