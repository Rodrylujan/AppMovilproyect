import 'package:apps/UI/quienessomos/uienessomos.dart';
import 'package:flutter/material.dart';

import '../productos/productos.dart';
class formulario extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(10, 10, 20, 20),
      child: Column(
        children: <Widget>[
          TextField(
            autofocus: true,
            decoration:
            InputDecoration(
              hintText: 'Ingrese un texto',
              icon: ImageIcon(
                  AssetImage('images/persona.png')
              )
            ),
          ),
          SizedBox(height: 30,),
          TextField(
            autofocus: true,
            decoration:
            InputDecoration(
                hintText: 'Ingrese un texto',
                icon: Icon(Icons.accessibility_sharp)
            ),
          ),
          SizedBox(height: 30,),
          Container(
            width: 200,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink,
                fixedSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius:  BorderRadius.circular(20)
                )
              ),
              onPressed: ()=>{
                Navigator.push(
                  context, MaterialPageRoute(builder: (context)=> productos() )
                )
              },
              child: Text("Registrar datos"),
            ),
          ),
          SizedBox(height: 30,),
          InkWell(
            onTap: ()=>{
              Navigator.push(
                  context, MaterialPageRoute(builder: (context)=> quienessomos() )
              )
            },
            child: Text("Quieres saber de nosotros",
            selectionColor: Colors.deepOrange,
            ),
          )
        ],
      ),
    );
  }

}