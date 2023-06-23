import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import '../../firebase_options.dart';
import '../../provider/provider_login.dart';
import '../../provider/provider_register.dart';
import '../../view/Register/registrousuario.dart';
import '../../view/login/loginform.dart';
import '../../view/login/estructura.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LoginUsuarioProvider()),
        ChangeNotifierProvider(create: (_) => RegistroUsuarioProvider()),
      ],
      child: MaterialApp(
        title: 'Cuidado del corazón',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: estructura(),
      ),
    );
  }
}


