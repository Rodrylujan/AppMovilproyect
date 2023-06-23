import 'package:flutter/material.dart';

class presentacion extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Image.asset('images/unser.png'),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.black12, width: 10),
        boxShadow: [
          BoxShadow(
            color:Colors.black54,
            offset: Offset.zero,
            blurRadius: 0.0,
            spreadRadius: 0.0,
          ),
          BoxShadow(
            color: Colors.black26,
            offset: Offset.zero,
            blurRadius: 0.0,
            spreadRadius: 0.0,
          )
        ]
      ),
    );
  }

}