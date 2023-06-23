import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../Principal/datosapp/menuApp.dart';
import '../../config/Widgets/InputDecorations.dart';
import '../../provider/provider_login.dart';
import '../../Principal/utilidades/validaciones.dart';
import '../Register/registrousuario.dart';

class loginform extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final f01 = Provider.of<LoginUsuarioProvider>(context);
    return Consumer<LoginUsuarioProvider>(
      builder: (context, provider, child) {
        return SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 250,),
              Container(
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.symmetric(horizontal: 30),
                width: double.infinity,
                //height: 350,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 15,
                        offset: Offset(0, 5),
                      )
                    ]),
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    Text('Login', style: Theme.of(context).textTheme.headline4),
                    const SizedBox(height: 30),
                    Container(
                      child: Form(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          child: Column(
                            children: [
                              TextFormField(
                                  autocorrect: false,
                                  decoration: InputDecorations.inputDecoration(
                                      hintext: 'ejemplo@gmail.com',
                                      labeltext: 'E-mail',
                                      icono: const Icon(
                                          Icons.email_outlined)),
                                  validator: (value){
                                    return validaciones.validarCorreo(value);
                                  }
                              ),
                              const SizedBox(height: 30),
                              TextFormField(
                                  autocorrect: false,
                                  obscureText: true,
                                  decoration: InputDecorations.inputDecoration(
                                      hintext: '*******',
                                      labeltext: 'Contraseña',
                                      icono: const Icon(
                                          Icons.lock_outlined)),
                                  validator: (value){
                                    return validaciones.validarPassword(value);
                                  }
                              ),
                              const SizedBox(height: 30),
                              MaterialButton(
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                disabledColor: Colors.grey,
                                color: Colors.deepOrangeAccent,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                                  child: const Text('Iniciar Sesión', style: TextStyle(color: Colors.white)),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => menuApp()),
                                  );
                                },
                              )
                            ],
                          )
                      ),
                    )
                  ],
                ),),
              const SizedBox(height: 50),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegistroUsuario()),
                  );
                },
                child: Text(
                  "No tengo una cuenta",
                  style: TextStyle(
                    color: Colors.deepOrange,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}



