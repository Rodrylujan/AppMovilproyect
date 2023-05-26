import 'package:flutter/material.dart ';

import 'cuerpo.dart';
import 'encabezado.dart';

class estructura extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: Column(
              children: <Widget>[
                encabezado(),
                cuerpo(),

              ],
            ),
          ),
        ),
      );
  }
}