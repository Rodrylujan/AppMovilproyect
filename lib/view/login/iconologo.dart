import 'package:flutter/material.dart';

class iconologo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Container(
      margin: const EdgeInsets.only(top: 30),
      width: double.infinity,
      child: Image.asset(
        '../../../assets/images/logo.png',
        width: 100,
        height: 120,
      ),
    )
    );
  }
}
