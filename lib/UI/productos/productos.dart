import 'package:flutter/material.dart';

class productos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'segunda interfaz',
      home: Scaffold(
        appBar: AppBar(
          title: Text('mi segunda'),
        ),
        body: Center(
          child: Container(
            child: Text('Hello World'),
          ),
        ),
      ),
    );
  }
}
