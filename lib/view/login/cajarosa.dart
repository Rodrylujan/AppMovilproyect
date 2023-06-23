import 'package:flutter/material.dart';

class cajarosa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromRGBO(234, 97, 94, 1),
            Color.fromRGBO(241, 129, 127, 1),
          ])
      ),
      width: double.infinity,
      height: size.height * 0.4,
      child: Stack(
        children: [
          Positioned(child: burbuja(), top:90, left: 30),
          Positioned(child: burbuja(), top: -40, left: -30),
          Positioned(child: burbuja(), top: -50, right: -40),
          Positioned(child: burbuja(), bottom: -50, left: -10),
          Positioned(child: burbuja(), bottom: 80, right: 30),
          Positioned(child: burbuja(), top: 150, right: -30),
        ],
      ),
    );
  }
  Container burbuja() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: const Color.fromRGBO(255, 255, 255, 0.12)
      ),
    );
  }
}
