import 'package:flutter/material.dart';

import './question.dart';

void main() {
  runApp(BaseApp());
}

class BaseApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BaseAppState();
  }
}

class BaseAppState extends State<BaseApp> {
  var textIndex = 0;

  var questions = ["what is this?", "how about you?"];

  void buttonPressed() {
    setState(() {
      textIndex = textIndex + 1;
    });
    print("button pressed");
    print(textIndex);
  }

  @override
  Widget build(BuildContext buildContext) {
    var buttonText = ["blsh", "psh"];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Appbar title"),
        ),
        body: Column(
          children: [
            Question(questions[textIndex]),
            RaisedButton(
              child: Text(buttonText[textIndex]),
              onPressed: buttonPressed,
            ),
            RaisedButton(
              child: Text("boo"),
              onPressed: () => print("other button pressed"),
            ),
          ],
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
