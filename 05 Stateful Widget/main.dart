import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var number = 0;

  void tambahAngka() {
    setState(() {
      number += 1;
    });
  }

  void clear() {
    setState(() {
      number = 0;
    });
  }

  ThemeData gantiTema() {
    if (number % 2 == 0) {
      return ThemeData.light();
    } else {
      return ThemeData.dark();
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: gantiTema(),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Stateful Widget',
            textAlign: TextAlign.center,
          ),
          leading: Icon(Icons.ac_unit),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                number.toString(),
                style: TextStyle(fontSize: 12 + number.toDouble()),
              ),
              ElevatedButton(
                  child: Text(
                    "Tambah Angka",
                  ),
                  onPressed: tambahAngka),
              ElevatedButton(
                onPressed: clear,
                child: Text("Clear Number"),
              ),
              ElevatedButton(onPressed: gantiTema, child: Text('Ganti Tema'))
            ],
          ),
        ),
      ),
    );
  }
}
