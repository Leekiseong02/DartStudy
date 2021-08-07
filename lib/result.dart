import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final resultScore;
  Result(this.resultScore);

  String get resultPhrase {
    String resultText = 'You did it!';
    if (resultScore <= 16) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 18) {
      resultText = 'Pretty likeable!';
    } else if (resultScore <= 20) {
      resultText = 'You are ... strange ?';
    } else {
      resultText = 'You are so bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
