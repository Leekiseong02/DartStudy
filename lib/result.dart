import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final resultScore;
  final Function reStart;
  Result(this.resultScore, this.reStart);

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
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: reStart,
            child: Text('Restart?'),
            textColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
