import 'package:apps/UI/Inicio/estructura.dart';
import 'package:apps/UI/datosapp/perfilUsuario.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../provider/provider_formulario.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Corazon',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: ChangeNotifierProvider(
        create: (_)=>provider_formulario(),
        child: Container(
          color: Colors.black12,
          child: estructura(),

        )
      )
    );
  }
}
