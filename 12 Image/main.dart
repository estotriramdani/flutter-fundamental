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
        title: Image.asset('assets/img/logo.png'),
      ),
      body: Center(
        child: Container(
          color: Colors.black,
          width: 400,
          height: 200,
          padding: EdgeInsets.all(3),
          // child: Image(
          //   fit: BoxFit.contain,
          //   image: NetworkImage('https://penerbit-ejbooks.my.id/ejbooks-backend/crud/gambar/katalogMenari_slide1.png'),
          //   repeat: ImageRepeat.repeat,
          // ),
          child: Image(
            fit: BoxFit.fitWidth,
            image: AssetImage('assets/img/logo.png'),
          ),
        ),
      ),
    ));
  }
}
