import 'package:flutter/material.dart';

void main() {
  runApp(BaseApp());
}

class BaseApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return BaseAppState();
  }
}

class BaseAppState extends State<BaseApp> {
  var textIndex = 0;

  void buttonPressed() {
    textIndex = textIndex + 1;
    print("button pressed");
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
            Text("something"),
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
