import 'package:flutter/material.dart';


class quienessomos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'tercera',
      home: Scaffold(
        appBar: AppBar(
          title: Text('mi tercera app'),
        ),
        body: Center(
          child: Container(
            child: Text('Hello mar'),
          ),
        ),
      ),
    );
  }
}
