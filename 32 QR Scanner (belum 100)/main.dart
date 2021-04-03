import 'package:flutter/material.dart';
import 'package:qrscan/qrscan.dart' as scanner;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String text = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QR Scanner'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
                child: Text('Scan'),
                onPressed: () async {
                  text = await scanner.scan();
                  setState(() {});
                })
          ],
        ),
      ),
    );
  }
}
