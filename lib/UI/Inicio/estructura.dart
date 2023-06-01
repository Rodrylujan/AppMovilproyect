import 'package:flutter/material.dart ';
import 'cuerpo.dart';
import 'encabezado.dart';

class estructura extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.red,
      margin: const EdgeInsets.all(40.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Scaffold(
        body: Center(
          child: Container(
            color: Colors.black12,
            child: Column(
              children: <Widget>[
                const SizedBox(height: 70),
                encabezado(),
                const SizedBox(height: 70),
                cuerpo(),

              ],
            ),
          ),
        ),
      ),
    );
  }
}