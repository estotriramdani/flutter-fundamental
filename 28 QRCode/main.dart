import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: QrImage(
            version: 6, 
            data: 'https://estotriramdani.github.io',
            backgroundColor: Colors.grey,
            foregroundColor: Colors.black87,
            errorCorrectionLevel: QrErrorCorrectLevel.M,
            padding: EdgeInsets.all(10),
            size: 300,
          ),
        ),
      ),
    );
  }
}
