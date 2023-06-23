import 'package:cloud_firestore/cloud_firestore.dart';
import '../Model/Usuario.dart';

FirebaseFirestore db = FirebaseFirestore. instance;

Future<List> getUser() async{
  List users = [];
  CollectionReference collectionReferenceusers = db.collection("User");

  QuerySnapshot queryUsers = await collectionReferenceusers.get();

  queryUsers.docs.forEach((element) {
    users.add(element.data());
  });

  return users;
}

Future<bool> setUser(User user) async {
  try {
    await db.collection("User").add(
      {
        "id": user.id,
        "email": user.email,
        "password": user.password,
        "nombres": user.nombres,
        "apellidos": user.apellidos,
        "fechaNacimiento": user.fechaNacimiento,
        "peso": user.peso,
        "altura": user.altura,
        "genero": user.genero,
        "telefono": user.telefono,
      },
    );
    return true;
  } catch (e) {
    print("Error al registrar el usuario");
    return false;
  }
}

