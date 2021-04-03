import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TabBar myTabBar = TabBar(
      indicator: BoxDecoration(
        color: Colors.blue,
        border: Border(top: BorderSide(color: Colors.red, width: 3))
      ),
      tabs: <Widget>[
        Tab(
          icon: Icon(Icons.add_comment_rounded),
          text: "Comments",
        ),
        Tab(
          icon: Icon(Icons.computer_rounded),
          text: "Computers",
        ),
      ],
    );

    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.amber,
            title: Text("Contoh TabBar"),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(myTabBar.preferredSize.height),
              child: Container(
                color: Colors.amber,
                child: myTabBar,
              ),
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
            ],
          ),
        ),
      ),
    );
  }
}
