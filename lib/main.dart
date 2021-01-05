import 'package:flutter/material.dart';

void main() {
  runApp(BaseApp());
}

void buttonPressed() {
  print("button pressed");
}

class BaseApp extends StatelessWidget {
  @override
  Widget build(BuildContext buildContext) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Appbar title"),
        ),
        body: Column(
          children: [
            Text("something"),
            RaisedButton(
              child: Text("blah"),
              onPressed: buttonPressed,
            )
          ],
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
