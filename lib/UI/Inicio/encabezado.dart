import 'package:flutter/material.dart';

class encabezado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            child: Image.asset(
              '../../../assets/images/logo.png',
              width: 200,
              height: 200,
            ),
          ),
        ],
      ),
    );
  }
}
