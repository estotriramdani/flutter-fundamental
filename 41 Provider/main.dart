import 'package:belajar_stateful_widget/application_color.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // ignore: missing_required_param
      home: ChangeNotifierProvider<ApplicationColor>(
        create: (context) => ApplicationColor(),
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.black,
              brightness: Brightness.dark,
              title: Consumer<ApplicationColor>(
                builder: (context, applicationColor, _) => Text(
        'Provider State Management',
        style: TextStyle(color: applicationColor.color),
                ),
              ),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
        Consumer<ApplicationColor>(
          builder: (context, applicationColor, _) => AnimatedContainer(
              width: 100,
              height: 100,
              color: applicationColor.color,
              duration: Duration(seconds: 1)),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(margin: EdgeInsets.all(5), child: Text("AB")),
            Consumer<ApplicationColor>(
              builder: (context, applicationColor, _) => Switch(
                value: applicationColor.isLightBlue,
                onChanged: (newValue) {
                  applicationColor.isLightBlue = newValue;
                },
              ),
            ),
            Container(margin: EdgeInsets.all(5), child: Text("LB")),
          ],
        ),
                ],
              ),
            ),
          ),
      ),
    );
  }
}
