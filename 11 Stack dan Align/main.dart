import 'dart:typed_data';

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
          title: Text("Latihan Stack dan Align"),
        ),
        body: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.amber[300],
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.amber[600],
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.amber[600],
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.amber[300],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ListView(
              children: [
                Column(
                  children: [
                    Container(
                        margin: EdgeInsets.all(30),
                        child: Text(
                          "Ini adalah text yang ada di lapisan tengah dari Stack",
                          style: TextStyle(fontSize: 26.0),
                        )),
                    Container(
                        margin: EdgeInsets.all(30),
                        child: Text(
                          "Ini adalah text yang ada di lapisan tengah dari Stack",
                          style: TextStyle(fontSize: 26.0),
                        )),
                    Container(
                        margin: EdgeInsets.all(30),
                        child: Text(
                          "Ini adalah text yang ada di lapisan tengah dari Stack",
                          style: TextStyle(fontSize: 26.0),
                        )),
                    Container(
                        margin: EdgeInsets.all(30),
                        child: Text(
                          "Ini adalah text yang ada di lapisan tengah dari Stack",
                          style: TextStyle(fontSize: 26.0),
                        )),
                    Container(
                        margin: EdgeInsets.all(30),
                        child: Text(
                          "Ini adalah text yang ada di lapisan tengah dari Stack",
                          style: TextStyle(fontSize: 26.0),
                        )),
                    Container(
                        margin: EdgeInsets.all(30),
                        child: Text(
                          "Ini adalah text yang ada di lapisan tengah dari Stack",
                          style: TextStyle(fontSize: 26.0),
                        )),
                    Container(
                        margin: EdgeInsets.all(30),
                        child: Text(
                          "Ini adalah text yang ada di lapisan tengah dari Stack",
                          style: TextStyle(fontSize: 26.0),
                        )),
                    Container(
                        margin: EdgeInsets.all(30),
                        child: Text(
                          "Ini adalah text yang ada di lapisan tengah dari Stack",
                          style: TextStyle(fontSize: 26.0),
                        )),
                    Container(
                        margin: EdgeInsets.all(30),
                        child: Text(
                          "Ini adalah text yang ada di lapisan tengah dari Stack",
                          style: TextStyle(fontSize: 26.0),
                        )),
                  ],
                ),
              ],
            ),
            Align(
              alignment: Alignment(0, 3.4/4),
              child: RaisedButton(
                onPressed: (){},
                child: Text("My Button"),
                color: Colors.amber
              ),
            ),
          ],
        ),
      ),
    );
  }
}
