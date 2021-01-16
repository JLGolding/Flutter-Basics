import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String outPutText;

  Question(this.outPutText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        outPutText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
