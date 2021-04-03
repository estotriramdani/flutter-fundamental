import 'package:belajar_stateful_widget/colorful_button.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Colorful Buttons"),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ColorfulButton(Colors.pink, Colors.blue, Icons.adb_outlined),
              ColorfulButton(Colors.amber, Colors.red, Icons.computer),
              ColorfulButton(Colors.green, Colors.yellow, Icons.person_add),
            ],
          ),
        ),
      ),
    );
  }
}
