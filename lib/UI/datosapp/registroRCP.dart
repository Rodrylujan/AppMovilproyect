import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../provider/provider_formulario.dart';
import '../quienessomos/uienessomos.dart';
import '../utilidades/validaciones.dart';

class registroRCP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<provider_formulario>(
      create: (_) => provider_formulario(),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context); // Regresar a la pantalla anterior
            },
          ),
          title: Text('Registro RCP'),
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(50, 50, 30, 30),
          child: Form(
            //key: f01.form_provedor,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              children: <Widget>[
                SizedBox(height: 30),
                TextFormField(
                  autofocus: true,
                  decoration: InputDecoration(
                    hintText: 'SpO2',
                    icon: Icon(Icons.monitor),
                  ),
                  validator: (value){
                    return validaciones.Validar_float(value);
                  },
                  //onChanged: (value) =>f01.casillero03,
                ),
                SizedBox(height: 30),
                TextFormField(
                  autofocus: true,
                  decoration: InputDecoration(
                    hintText: 'PRBPM',
                    icon: Icon(Icons.favorite),
                  ),
                  validator: (value){
                    return validaciones.Validar_float(value);
                  },
                  //onChanged: (value) =>f01.casillero03,
                ),

                SizedBox(height: 30),
                TextFormField(
                  autofocus: true,
                  decoration: InputDecoration(
                    hintText: 'Presión Sistólica',
                    icon: Icon(Icons.arrow_upward),
                  ),
                  validator: (value){
                    return validaciones.Validar_float(value);
                  },
                  //onChanged: (value) =>f01.casillero03,
                ),

                SizedBox(height: 30),
                TextFormField(
                  autofocus: true,
                  decoration: InputDecoration(
                    hintText: 'Presión Diastólica',
                    icon: Icon(Icons.arrow_downward),
                  ),
                  validator: (value){
                    return validaciones.Validar_float(value);
                  },
                  //onChanged: (value) =>f01.casillero03,
                ),
                SizedBox(height: 50),
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

                    },
                    child: Text("Registrar"),
                  ),
                ),
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
        ),
      ),
    );
  }
}
