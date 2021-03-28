import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('TextField'),
          ),
          body: Container(
            margin: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.red[300],
                    filled: true,
                    prefixIcon: Icon(Icons.ac_unit),
                    icon: Icon(Icons.person),
                    suffix: ElevatedButton(
                      child: Icon(Icons.remove_red_eye),
                      onPressed: () {},
                    ),
                    prefix: Container(
                      width: 5,
                      height: 5,
                      color: Colors.blueGrey,
                    ),
                    // prefixText: "Name",
                    // prefixStyle: TextStyle(color: Colors.amber, fontWeight: FontWeight.bold),
                    labelText: "Nama Lengkap",
                    labelStyle: TextStyle(
                        color: Colors.amber, fontWeight: FontWeight.w100),
                    hintText: "Nama lengkap Anda",
                    hintStyle: TextStyle(fontSize: 12.0, color: Colors.black45),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  obscureText: false,
                  // maxLength: 5,
                  // maxLines: 2,
                  onChanged: (value) {
                    setState(() {});
                  },
                  controller: controller,
                ),
                Text(controller.text),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
