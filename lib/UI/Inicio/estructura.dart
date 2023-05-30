import 'package:flutter/material.dart ';

import 'cuerpo.dart';
import 'encabezado.dart';

class estructura extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Container(
            child: Column(
              children: <Widget>[
                SizedBox(height: 100),
                encabezado(),
                SizedBox(height: 50),
                cuerpo(),

              ],
            ),
          ),
        ),
      );
  }
}