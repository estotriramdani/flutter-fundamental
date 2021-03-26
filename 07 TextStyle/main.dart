import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Belajar Text Style'),
        ),
        body: Center(
          child: Text(
            'Ini adalah sebuah text == => !=',
            style: TextStyle(
              fontFamily: "VictorMono",
              fontSize: 30,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.overline,
              decorationColor: Colors.amber[400],
              decorationThickness: 2,
              decorationStyle: TextDecorationStyle.solid
          
            ),
          ),
        ),
      ),
    );
  }
}
