import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Contoh TabBar"),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.comment),
                  text: "Comments",
                ),
                Tab(
                  child: Image(
                    image: AssetImage('assets/img/linkedin.png'),
                  ),
                ),
                Tab(
                  icon: Icon(Icons.computer),
                ),
                Tab(
                  text: "News",
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Center(
                child: Text('Tab 1'),
              ),
              Center(
                child: Text('Tab 2'),
              ),
              Center(
                child: Text('Tab 3'),
              ),
              Center(
                child: Text('Tab 4'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
