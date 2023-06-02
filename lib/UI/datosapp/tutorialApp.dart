import 'package:apps/UI/Inicio/encabezadogereral.dart';
import 'package:apps/UI/datosapp/perfilUsuario.dart';
import 'package:apps/UI/datosapp/registroRCP.dart';
import 'package:flutter/material.dart';

class tutorialApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        key: UniqueKey(),
        title: 'Tutorial',
        onBackButtonPressed: () {
          Navigator.pop(context);
        },
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 30, 40, 10),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Image.asset(
              '../../../assets/images/tutorial.png',
            ),
          ],
        ),
      ),
    );
  }
}

