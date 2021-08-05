import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerSelecter;
  String answerText;
  Answer(this.answerSelecter, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // ignore: deprecated_member_use
      child: RaisedButton(
          child: Text(answerText),
          color: Colors.blue,
          onPressed: answerSelecter),
    );
  }
}
