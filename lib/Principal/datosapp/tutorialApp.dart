
import 'package:flutter/material.dart';

import '../main/encabezadogereral.dart';

class tutorialApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        key: UniqueKey(),
        title: 'Tutorial',
        onBackButtonPressed: () {
          Navigator.pop(context);
        },
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 30, 40, 10),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Image.asset(
              '../../../assets/images/tutorial.png',
            ),
          ],
        ),
      ),
    );
  }
}

