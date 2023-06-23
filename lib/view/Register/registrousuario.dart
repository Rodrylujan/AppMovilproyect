import 'package:apps/view/Register/registro_form.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../Principal/main/encabezadogereral.dart';
import '../../provider/provider_register.dart';

class RegistroUsuario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final f01 = context.watch<RegistroUsuarioProvider>();

    return Consumer<RegistroUsuarioProvider>(
      builder: (context, provider, child) {
        return Scaffold(
          appBar: MyAppBar(
            key: UniqueKey(),
            title: "Registrar",
            onBackButtonPressed: () {
              Navigator.pop(context);
            },
          ),
          body: RegistroForm(),
        );
      },
    );
  }
}
