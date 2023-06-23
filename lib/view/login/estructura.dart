import 'package:flutter/material.dart ';
import 'cajarosa.dart';
import 'loginform.dart';
import 'iconologo.dart';

class estructura extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              cajarosa(),
              iconologo(),
              loginform()
            ],
          ),
        )
    );
  }
}