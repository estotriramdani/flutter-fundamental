import 'dart:math';
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
          title: Text('Flexible Layout'),
        ),
        body: Column(
          children: [
            Flexible(
              flex: 1,
              child: Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.all(5),
                      color: Colors.red[100],
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.all(5),
                      color: Colors.red[300],
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.all(5),
                      color: Colors.red[600],
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
                flex: 2,
                child: Container(
                    margin: EdgeInsets.all(5), color: Colors.amber[400])),
            Flexible(
                flex: 1,
                child: Container(
                    margin: EdgeInsets.all(5), color: Colors.amber[200])),
          ],
        ),
      ),
    );
  }
}
