import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerSelecter;
  Answer(this.answerSelecter);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      // ignore: deprecated_member_use
      child: RaisedButton(
          child: Text('Answer 1'),
          color: Colors.blue,
          onPressed: answerSelecter),
    );
  }
}
