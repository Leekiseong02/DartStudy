import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  final _questionList = const [
    {
      'questionText': 'what\'s your favorite color?',
      'answerText': [
        {'Text': 'Red', 'Score': 10},
        {'Text': 'Blue', 'Score': 8},
        {'Text': 'Green', 'Score': 6},
        {'Text': 'White', 'Score': 4},
      ],
    },
    {
      'questionText': 'what\'s your favorite fruit?',
      'answerText': [
        {'Text': 'Apple', 'Score': 10},
        {'Text': 'Strawberry', 'Score': 8},
        {'Text': 'Grape', 'Score': 6},
        {'Text': 'Lemon', 'Score': 4},
      ],
    },
    {
      'questionText': 'what\'s your favorite singer?',
      'answerText': [
        {'Text': 'Twice', 'Score': 10},
        {'Text': 'Girl\'s Generation', 'Score': 8},
        {'Text': '10cm', 'Score': 6},
        {'Text': 'IU', 'Score': 4}
      ],
    },
  ];
  var _totalScore = 0;

  var _questionNumber = 0;

  void questionFunction(int score) {
    _totalScore += score;
    setState(() => _questionNumber = _questionNumber + 1);
    if (_questionNumber < _questionList.length) {
      print('We have more questions!');
    } else {
      print('We have no question');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: _questionNumber < _questionList.length
            ? Quiz(
                questionList: _questionList,
                questionFunction: questionFunction,
                questionNumber: _questionNumber,
              )
            : Result(),
        appBar: AppBar(
          title: Text('My First App'),
        ),
      ),
    );
  }
}
