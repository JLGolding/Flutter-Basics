import 'package:flutter/material.dart';

void main() {
  runApp(BaseApp());
}

class BaseApp extends StatelessWidget {
  @override
  Widget build(BuildContext buildContext) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Appbar title"),
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
